#include <ap_int.h>
#include "hls_stream.h"
#include "ap_axi_sdata.h"

typedef ap_uint<4> uint4;
typedef ap_uint<32> uint32;
typedef ap_uint<64> uint64;

uint4 sbox(uint4 in) {
    #pragma HLS INLINE

    const uint4 table[16] = {
        0xC, 0x5, 0x6, 0xB,
        0x9, 0x0, 0xA, 0xD,
        0x3, 0xE, 0xF, 0x8,
        0x4, 0x7, 0x1, 0x2
    };

    #pragma HLS ARRAY_PARTITION variable=table complete

    return table[in];
}

uint32 sustitution(uint32 in) {
    #pragma HLS INLINE
    uint32 out = 0;
    
    for(int i = 0; i < 8; i++) {
        #pragma HLS UNROLL
        out.range(i*4+3, i*4) = sbox(in.range(i*4+3, i*4));
    }

    return out;
}

uint32 permutation(uint32 in) {
    #pragma HLS INLINE
    
    uint32 out = 0;
    
    for(int i = 0; i < 32; i++) {
        #pragma HLS UNROLL
        int pos = (i/4) + 8*(i%4);
        out[pos] = in[i];
    }

    return out;
}

uint32 key_mixing(uint32 in, uint32 round_key) {
    #pragma HLS INLINE
    return in ^ round_key;
}

uint32 round_function(uint32 in, uint32 round_key) {
    #pragma HLS INLINE
    uint32 out = 0;

    out = key_mixing(in, round_key);
    out = sustitution(out);
    out = permutation(out);

    return out;
} 

uint32 permutation_inverse(uint32 in) {
    #pragma HLS INLINE
    
    uint32 out = 0;
    
    for(int i = 0; i < 32; i++) {
        #pragma HLS UNROLL
        int pos = (i%8)*4 + i/8;
        out[pos] = in[i];
    }

    return out;
}

uint32 last_round_correction(uint32 in, uint32 round_key) {
    #pragma HLS INLINE
    
    uint32 out = 0;
    
    out = permutation_inverse(in);
    out = key_mixing(out, round_key);

    return out;
}

uint32 key_schedule(uint64 &key, int round) {
    #pragma HLS INLINE

    uint32 round_key = key >> 32;  

    // Rotación circular izquierda 61 bits
    key.lrotate(61);

    // Sustituye 4 bits más significativos
    key.range(63, 60) = sbox(key.range(63, 60));
    
    // XOR con el round counter
    key ^= (uint64(round & 0x1F) << 15);

    return round_key;
}


template< int R >
uint32 stage(uint32 in, uint32 round_keys[]) {
    #pragma HLS PIPELINE II=1
    #pragma HLS INLINE off
    #pragma HLS LATENCY min=1 max=1

    uint32 state = round_function(in, round_keys[2*R]);
    return round_function(state, round_keys[2*R + 1]);
}

template< int R >
uint32 last_stage(uint32 in, uint32 round_keys[]) {
    #pragma HLS PIPELINE II=1
    #pragma HLS INLINE off
    #pragma HLS LATENCY min=1 max=1

    uint32 state = round_function(in, round_keys[2*R]);
    return last_round_correction(state, round_keys[2*R + 1]);
}

template<int CURRENT, int TOTAL_R>
struct Pipeline {
    static uint32 run(uint32 in, uint32 round_keys[]) {
        #pragma HLS INLINE
        uint32 state = stage<CURRENT>(in, round_keys);
        return Pipeline<CURRENT+1, TOTAL_R>::run(state, round_keys);
    }
};

template<int TOTAL_R>
struct Pipeline<TOTAL_R, TOTAL_R> {
    static uint32 run(uint32 in, uint32 round_keys[]) {
        #pragma HLS INLINE
        #pragma HLS PIPELINE II=1
        
        return last_stage<TOTAL_R>(in, round_keys);
    }
};


typedef ap_axis<32,0,0,0> stream_word;

void cifrador_pipeline_stream_2(
    hls::stream<stream_word> &in_stream,
    hls::stream<stream_word> &out_stream,
    uint64 key
)
{
    #pragma HLS INTERFACE axis port=in_stream
    #pragma HLS INTERFACE axis port=out_stream
    #pragma HLS INTERFACE s_axilite port=key
    #pragma HLS INTERFACE s_axilite port=return

    uint32 round_keys[32];
    #pragma HLS ARRAY_PARTITION variable=round_keys complete

    // Generación de round keys
    for(int r = 0; r < 32; r++) {
        #pragma HLS UNROLL
        round_keys[r] = key_schedule(key, r);
    }

    // Procesamiento por stream hasta recibir TLAST
    bool last = false;

    while(!last) {
        #pragma HLS PIPELINE II=1

        stream_word in_pkt = in_stream.read();

        uint32 plaintext = in_pkt.data;            
        uint32 result = Pipeline<0, 15>::run(plaintext, round_keys);

        stream_word out_pkt;
        out_pkt.data = result;
        out_pkt.keep = in_pkt.keep;
        out_pkt.strb = in_pkt.strb;
        out_pkt.user = in_pkt.user;
        out_pkt.id   = in_pkt.id;
        out_pkt.dest = in_pkt.dest;
        out_pkt.last = in_pkt.last;

        out_stream.write(out_pkt);

        last = in_pkt.last;
    }
}