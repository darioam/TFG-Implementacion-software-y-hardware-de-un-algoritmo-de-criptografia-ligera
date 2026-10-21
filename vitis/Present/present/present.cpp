#include <ap_int.h>

typedef ap_uint<4> uint4;
typedef ap_uint<64> uint64;
typedef ap_uint<80> uint80;

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

uint64 sustitution(uint64 in) {
    #pragma HLS INLINE
    uint64 out = 0;
    
    for(int i = 0; i < 16; i++) {
        #pragma HLS UNROLL
        out.range(i*4+3, i*4) = sbox(in.range(i*4+3, i*4));
    }

    return out;
}

uint64 permutation(uint64 in) {
    #pragma HLS INLINE
    
    uint64 out = 0;
    
    for(int i = 0; i < 64; i++) {
        #pragma HLS UNROLL
        int pos = (i/4) + 16*(i%4);
        out[pos] = in[i];
    }

    return out;
}

uint64 key_mixing(uint64 in, uint64 round_key) {
    #pragma HLS INLINE
    return in ^ round_key;
}

uint64 round_function(uint64 in, uint64 round_key) {
    #pragma HLS INLINE
    uint64 out = 0;

    out = key_mixing(in, round_key);
    out = sustitution(out);
    out = permutation(out);

    return out;
} 

uint64 permutation_inverse(uint64 in) {
    #pragma HLS INLINE
    
    uint64 out = 0;
    
    for(int i = 0; i < 32; i++) {
        #pragma HLS UNROLL
        int pos = (i%16)*4 + i/16;
        out[pos] = in[i];
    }

    return out;
}

uint64 last_round_correction(uint64 in, uint64 round_key) {
    #pragma HLS INLINE
    
    uint64 out = 0;
    
    //out = permutation_inverse(in);
    out = key_mixing(in, round_key);

    return out;
}

void key_schedule(uint80 &key, uint64 round_keys[32]) {
    #pragma HLS INLINE
    
    for (int round = 1; round < 33; round++) {
        round_keys[round-1] = key >> 16;  

        // Rotación circular izquierda 61 bits
        key.lrotate(61);

        // Sustituye 4 bits más significativos
        key.range(79, 76) = sbox(key.range(79, 76));
        
        // XOR con el round counter
        key ^= (uint80(round & 0x1F) << 15);
    }
}

uint64 present(uint64 plaintext, uint80 key) {
    #pragma HLS INTERFACE s_axilite port=plaintext  
    #pragma HLS INTERFACE s_axilite port=key        
    #pragma HLS INTERFACE s_axilite port=return     
    uint64 state = plaintext;
    uint64 round_keys[32];

    key_schedule(key, round_keys);
    for(int round = 0; round < 31; round++) {
        state = round_function(state, round_keys[round]);
    }
    
    state = last_round_correction(state, round_keys[31]);

    return state;
}
