// =============================================================
//  Testbench – cifrador_serial
//  Compatible con Vitis HLS (C-Simulation y Co-Simulation)
// =============================================================

#include <iostream>
#include <iomanip>
#include <cstdlib>
#include "cifrador_serial.h"

// ---------------------------------------------------------------
// Reference software implementation (plain C++)
// Used to cross-check the HLS result.
// ---------------------------------------------------------------
namespace ref {

    // All types use standard unsigned integers for the SW model
    typedef unsigned char  u4;   // only 4 LSBs used
    typedef unsigned int   u32;
    typedef unsigned long long u64;

    static const u4 SBOX[16] = {
        0xC, 0x5, 0x6, 0xB,
        0x9, 0x0, 0xA, 0xD,
        0x3, 0xE, 0xF, 0x8,
        0x4, 0x7, 0x1, 0x2
    };

    static u4 sbox(u4 in) { return SBOX[in & 0xF]; }

    static u32 sustitution(u32 in) {
        u32 out = 0;
        for (int i = 0; i < 8; i++)
            out |= ((u32)sbox((in >> (i*4)) & 0xF)) << (i*4);
        return out;
    }

    static u32 permutation(u32 in) {
        u32 out = 0;
        for (int i = 0; i < 32; i++) {
            int pos = (i/4) + 8*(i%4);
            out |= (((in >> i) & 1u) << pos);
        }
        return out;
    }

    static u32 permutation_inverse(u32 in) {
        u32 out = 0;
        for (int i = 0; i < 32; i++) {
            int pos = (i%8)*4 + i/8;
            out |= (((in >> i) & 1u) << pos);
        }
        return out;
    }

    static void serial_round(u32 &state, u32 round_key) {
        for (int sel = 0; sel < 8; sel++) {
            u4 sub = (state >> (sel*4)) & 0xF;
            sub ^= (round_key >> (sel*4)) & 0xF;
            sub  = sbox(sub);
            state = (state & ~(0xFu << (sel*4))) | ((u32)sub << (sel*4));
        }
        state = permutation(state);
    }

    static u32 key_schedule(u64 &key, int round) {
        u32 rk = (u32)(key >> 32);

        // Left-rotate 61 bits
        key = (key << 61) | (key >> 3);

        // Substitute top 4 bits
        u4 top = (key >> 60) & 0xF;
        top = sbox(top);
        key = (key & 0x0FFFFFFFFFFFFFFFull) | ((u64)top << 60);

        // XOR with round counter (bits [19:15])
        key ^= ((u64)(round & 0x1F)) << 15;

        return rk;
    }

    static u32 cifrador_serial(u32 plaintext, u64 key) {
        u32 state = plaintext;
        for (int r = 0; r < 31; r++) {
            u32 rk = key_schedule(key, r);
            serial_round(state, rk);
        }
        u32 rk = key_schedule(key, 31);
        state = permutation_inverse(state) ^ rk;
        return state;
    }

} // namespace ref


// ---------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------
static void print_result(const char *label, unsigned int val) {
    std::cout << std::left << std::setw(20) << label
              << "0x" << std::hex << std::uppercase
              << std::setfill('0') << std::setw(8) << val
              << std::dec << std::setfill(' ') << "\n";
}

// ---------------------------------------------------------------
// Test vectors
// ---------------------------------------------------------------
struct TestVector {
    unsigned int  plaintext;
    unsigned long long key;
    unsigned int  expected;   // 0 = unknown (just compare HLS vs SW)
};

// Basic known-answer tests.
// expected == 0  ⟹ SW model is the golden reference.
static const TestVector vectors[] = {
    { 0x00000000u, 0x0000000000000000ull, 0u },
    { 0xFFFFFFFFu, 0xFFFFFFFFFFFFFFFFull, 0u },
    { 0x12345678u, 0xDEADBEEFCAFEBABEull, 0u },
    { 0xA5A5A5A5u, 0x0123456789ABCDEFull, 0u },
    { 0xDEADC0DEu, 0xFEEDFACEFEEDFACEull, 0u },
    { 0x00000001u, 0x8000000000000000ull, 0u },
    { 0x80000000u, 0x0000000000000001ull, 0u },
};

static const int N_VECTORS = sizeof(vectors) / sizeof(vectors[0]);


// ---------------------------------------------------------------
// Main
// ---------------------------------------------------------------
int main() {
    int errors = 0;

    std::cout << "======================================\n";
    std::cout << "  cifrador_serial – HLS Testbench\n";
    std::cout << "======================================\n\n";

    for (int i = 0; i < N_VECTORS; i++) {
        uint32 pt  = vectors[i].plaintext;
        uint64 key = vectors[i].key;

        // HLS DUT
        uint32 hls_ct = cifrador_serial(pt, key);

        // SW golden reference
        unsigned int sw_ct = ref::cifrador_serial(
            (unsigned int)pt,
            (unsigned long long)key
        );

        bool match = ((unsigned int)hls_ct == sw_ct);
        if (!match) errors++;

        std::cout << "Test vector " << i << "\n";
        print_result("  Plaintext :", (unsigned int)pt);
        print_result("  Key (hi32):", (unsigned int)((unsigned long long)key >> 32));
        print_result("  HLS result:", (unsigned int)hls_ct);
        print_result("  SW  result:", sw_ct);
        std::cout << "  --> " << (match ? "PASS" : "FAIL <<<") << "\n\n";
    }

    std::cout << "======================================\n";
    if (errors == 0)
        std::cout << "  ALL " << N_VECTORS << " TESTS PASSED\n";
    else
        std::cout << "  " << errors << " TEST(S) FAILED\n";
    std::cout << "======================================\n";

    return errors;   // Vitis HLS interprets non-zero return as failure
}