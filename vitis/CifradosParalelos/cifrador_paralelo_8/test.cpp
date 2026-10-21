#include <iostream>
#include "cifrador.h"

int main() {

    uint32 plaintext[N];
    uint32 ciphertext[N];
    uint32 expected[N];

    uint64 key = 0xDEADBEEFCAFEBABE;

    // Inicializar datos
    for (int i = 0; i < N; i++) {
        plaintext[i] = i;
        expected[i] = plaintext[i] ^ (uint32)key;
    }

    // Ejecutar función
    cifrador_paralelo(plaintext, key, ciphertext);

    // Verificar resultados
    int errores = 0;

    for (int i = 0; i < N; i++) {
        std::cout << "plaintext[" << i << "] = " << plaintext[i]
                  << " -> ciphertext = " << ciphertext[i] << std::endl;

        if (ciphertext[i] != expected[i]) {
            std::cout << "ERROR en indice " << i << std::endl;
            errores++;
        }
    }

    // Resultado final
    if (errores == 0) {
        std::cout << "TEST PASADO ✅" << std::endl;
    } else {
        std::cout << "TEST FALLIDO ❌ con " << errores << " errores" << std::endl;
    }

    return errores;
}