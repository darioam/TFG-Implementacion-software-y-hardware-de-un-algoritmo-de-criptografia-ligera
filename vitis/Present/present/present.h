#ifndef PRESENT_H
#define PRESENT_H

#include <ap_int.h>

// Tipos
typedef ap_uint<4>  uint4;
typedef ap_uint<64> uint64;
typedef ap_uint<80> uint80;

// S-Box
uint4 sbox(uint4 in);

// Transformación de sustitución
uint64 sustitution(uint64 in);

// Permutación
uint64 permutation(uint64 in);

// Permutación inversa
uint64 permutation_inverse(uint64 in);

// Mezcla con clave
uint64 key_mixing(uint64 in, uint64 round_key);

// Función de ronda
uint64 round_function(uint64 in, uint64 round_key);

// Corrección de última ronda
uint64 last_round_correction(uint64 in, uint64 round_key);

// Expansión de clave
void key_schedule(uint80 &key, uint64 round_keys[32]);

// Cifrado PRESENT
uint64 present(uint64 plaintext, uint80 key);

#endif // PRESENT_H