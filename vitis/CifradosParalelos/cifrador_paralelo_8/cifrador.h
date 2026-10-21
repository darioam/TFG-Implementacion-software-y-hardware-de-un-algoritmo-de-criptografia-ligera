#ifndef CIFRADOR_PARALELO_H
#define CIFRADOR_PARALELO_H

#include <ap_int.h>

#define N 8  // Cambia aquí: 4, 8, 16...

typedef ap_uint<32> uint32;
typedef ap_uint<64> uint64;

// Función básica (debes implementarla o ya la tienes)
uint32 cifrador(uint32 plaintext, uint64 key);

// Función paralela
void cifrador_paralelo(
    uint32 plaintext[N],
    uint64 key,
    uint32 ciphertext[N]
);

#endif