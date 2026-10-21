#include <ap_int.h>

typedef ap_uint<4> uint4;
typedef ap_uint<32> uint32;
typedef ap_uint<64> uint64;

uint4 sbox(uint4 in) {
    #pragma HLS INLINE off 
    #pragma HLS ALLOCATION function instances=sbox limit=1

    const uint4 table[16] = {
        0xC, 0x5, 0x6, 0xB,
        0x9, 0x0, 0xA, 0xD,
        0x3, 0xE, 0xF, 0x8,
        0x4, 0x7, 0x1, 0x2
    };

    #pragma HLS ARRAY_PARTITION variable=table complete

    return table[in];
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

uint4 key_mixing(uint4 in, uint4 round_key) {
    #pragma HLS INLINE
    return in ^ round_key;
}

uint32 key_mixing(uint32 in, uint32 round_key) {
    #pragma HLS INLINE
    return in ^ round_key;
}

uint4 select_subblock(uint32 state, uint4 sel) {
    #pragma HLS INLINE
    return state.range(sel*4+3, sel*4);
}

// --- Actualizar sub-bloque ---
void update_subblock(uint32 &state, uint4 sel, uint4 val) {
    #pragma HLS INLINE
    state.range(sel*4+3, sel*4) = val;
}

void serial_round(uint32 &state, uint32 round_key) {
    #pragma HLS latency min=9 max=9
    
    for(uint4 sel=0; sel<8; sel++) {
        #pragma HLS latency min=8 max=8
        uint4 sub_block = select_subblock(state, sel);
        sub_block = key_mixing(sub_block, round_key.range(sel*4+3, sel*4)); 
        #pragma HLS ALLOCATION function instances=sbox limit=1 
        sub_block = sbox(sub_block);
        update_subblock(state, sel, sub_block);
    }
    state = permutation(state);
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

uint32 serial_last_round_correction(uint32 in, uint32 round_key) {
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

uint32 cifrador_serial(uint32 plaintext, uint64 key) {
    #pragma HLS INTERFACE s_axilite port=plaintext  
    #pragma HLS INTERFACE s_axilite port=key        
    #pragma HLS INTERFACE s_axilite port=return     
    uint32 state = plaintext;

    for(int round = 0; round < 31; round++) {
        #pragma HLS PIPELINE II=1
        uint32 round_key = key_schedule(key, round);
        serial_round(state, round_key);
    }
    
    uint32 round_key = key_schedule(key, 31);
    state = serial_last_round_correction(state, round_key);

    return state;
}
