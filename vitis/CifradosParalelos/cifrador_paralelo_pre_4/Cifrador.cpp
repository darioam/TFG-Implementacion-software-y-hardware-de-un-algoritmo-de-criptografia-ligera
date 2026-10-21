#include <ap_int.h>

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

uint32 cifrador(uint32 plaintext, uint32 round_keys[32]) {
 
    uint32 state = plaintext;

    for(int round = 0; round < 31; round++) {
        state = round_function(state, round_keys[round]);
    }
    
    state = last_round_correction(state, round_keys[31]);

    return state;
}


#define N 4  

void cifrador_paralelo_pre_4(
    uint32 plaintext[N],
    uint64 key,
    uint32 ciphertext[N])
{
    #pragma HLS INTERFACE s_axilite port=plaintext
    #pragma HLS INTERFACE s_axilite port=key
    #pragma HLS INTERFACE s_axilite port=ciphertext
    #pragma HLS INTERFACE s_axilite port=return

    #pragma HLS ARRAY_PARTITION variable=plaintext  complete
    #pragma HLS ARRAY_PARTITION variable=ciphertext complete

    uint32 round_keys[32];
    #pragma HLS ARRAY_PARTITION variable=round_keys complete

    for(int r = 0; r < 32; r++) {
        #pragma HLS UNROLL
        round_keys[r] = key_schedule(key, r);
    }

    for(int i = 0; i < N; i++) {
        #pragma HLS UNROLL
        ciphertext[i] = cifrador(plaintext[i], round_keys);
    }
}