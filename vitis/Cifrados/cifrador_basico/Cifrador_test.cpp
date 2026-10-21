#include <iostream>
#include <iomanip>
#include "cifrador_basico.h"

int main() {

    // Tabla de vectores de prueba: {plaintext, key, ciphertext_esperado}
    struct TestVector {
        uint32_t plaintext;
        uint64_t key;
        uint32_t expected;
    };


    TestVector tests[] = {
        { 0x00000000, 0x0000000000000000, 0x2d15d21e },
        { 0xFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0x459ecd3c },
        { 0x01234567, 0x0123456789ABCDEF, 0xf9097518 },
    };

    int num_tests = sizeof(tests) / sizeof(tests[0]);
    int fallos    = 0;

    for (int i = 0; i < num_tests; i++) {
        uint32 result = cifrador_basico(tests[i].plaintext, tests[i].key);

        if (result != tests[i].expected) {
            std::cout << "[FALLO] Test " << i 
                      << " | Obtenido: 0x"  << std::hex << (uint32_t)result
                      << " | Esperado: 0x"  << std::hex << tests[i].expected
                      << std::endl;
            fallos++;
        } else {
            std::cout << "[OK]    Test " << i << std::endl;
        }
    }

    std::cout << "\nResultado: " << (num_tests - fallos) 
              << "/" << num_tests << " tests superados" << std::endl;

    return fallos;  // 0 = todos correctos, Vitis marca como PASS
}