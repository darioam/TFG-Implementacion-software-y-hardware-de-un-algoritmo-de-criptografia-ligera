#include <iostream>
#include <ap_int.h>
#include "present.h"

int main() {
    // Ejemplo de entrada (plaintext de 64 bits)
    uint64 plaintext = 0x0000000000000000;

    // Ejemplo de clave de 80 bits
    uint80 key = 0x00000000000000000000;

    // Llamada al cifrador
    uint64 ciphertext = present(plaintext, key);

    // Mostrar resultados
    std::cout << "Plaintext : 0x" << std::hex << plaintext << std::endl;
    std::cout << "Key       : 0x" << std::hex << key << std::endl;
    std::cout << "Ciphertext: 0x" << std::hex << ciphertext << std::endl;

    return 0;
}