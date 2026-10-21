#include <ap_int.h>
#include <hls_stream.h>

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

void key_schedule(uint64 key, hls::stream<uint32> &k0, hls::stream<uint32> &k1, hls::stream<uint32> &k2, hls::stream<uint32> &k3) {
    #pragma HLS INLINE off

    for(int round = 0; round < 32; round++) {
        #pragma HLS PIPELINE II=1

        uint32 round_key = key >> 32;

        k0.write(round_key);
        k1.write(round_key);
        k2.write(round_key);
        k3.write(round_key);

        key.lrotate(61);
        key.range(63,60) = sbox(key.range(63,60));
        key ^= (uint64(round & 0x1F) << 15);
    }
}

uint32 cifrador(uint32 plaintext, hls::stream<uint32> &kstream)
{
    #pragma HLS INLINE off

    uint32 state = plaintext;

    for(int round = 0; round < 31; round++) {

        uint32 round_key = kstream.read();
        state = round_function(state, round_key);
    }

    uint32 last_round_key = kstream.read();
    state = last_round_correction(state, last_round_key);

    return state;
}

void cifrador_paralelo_stream(
    uint32 plaintext0, uint32 plaintext1,
    uint32 plaintext2, uint32 plaintext3,
    uint64 key,
    uint32 &ciphertext0, uint32 &ciphertext1,
    uint32 &ciphertext2, uint32 &ciphertext3) {
    
    #pragma HLS INTERFACE s_axilite port=plaintext0
    #pragma HLS INTERFACE s_axilite port=plaintext1
    #pragma HLS INTERFACE s_axilite port=plaintext2
    #pragma HLS INTERFACE s_axilite port=plaintext3
    #pragma HLS INTERFACE s_axilite port=key
    #pragma HLS INTERFACE s_axilite port=ciphertext0
    #pragma HLS INTERFACE s_axilite port=ciphertext1
    #pragma HLS INTERFACE s_axilite port=ciphertext2
    #pragma HLS INTERFACE s_axilite port=ciphertext3
    #pragma HLS INTERFACE s_axilite port=return
    
    #pragma HLS DATAFLOW

    hls::stream<uint32> k0, k1, k2, k3;

    #pragma HLS STREAM variable=k0 depth=32
    #pragma HLS STREAM variable=k1 depth=32
    #pragma HLS STREAM variable=k2 depth=32
    #pragma HLS STREAM variable=k3 depth=32

    key_schedule(key, k0, k1, k2, k3);

    ciphertext0 = cifrador(plaintext0, k0);
    ciphertext1 = cifrador(plaintext1, k1);
    ciphertext2 = cifrador(plaintext2, k2);
    ciphertext3 = cifrador(plaintext3, k3);
}