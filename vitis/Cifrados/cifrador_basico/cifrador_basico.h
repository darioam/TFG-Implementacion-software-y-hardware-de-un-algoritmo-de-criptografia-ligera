#ifndef CIFRADOR_BASICO_H
#define CIFRADOR_BASICO_H

#include <ap_int.h>

typedef ap_uint<4>  uint4;
typedef ap_uint<32> uint32;
typedef ap_uint<64> uint64;

// Funcion top para sintesis HLS
uint32 cifrador_basico(uint32 plaintext, uint64 key);

// Funciones auxiliares (necesarias si el testbench las prueba individualmente)
uint4  sbox               (uint4  in);
uint32 substitution       (uint32 in);
uint32 permutation        (uint32 in);
uint32 permutation_inverse(uint32 in);
uint32 key_mixing         (uint32 in, uint32 round_key);
uint32 round_function     (uint32 in, uint32 round_key);
uint32 last_round_correction(uint32 in, uint32 round_key);
uint32 key_schedule       (uint64 &key, int round);

#endif // CIFRADOR_BASICO_H
