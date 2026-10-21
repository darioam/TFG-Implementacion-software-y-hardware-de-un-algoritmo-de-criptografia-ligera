#ifndef CIFRADOR_SERIAL_H
#define CIFRADOR_SERIAL_H

#include <ap_int.h>

// Type definitions
typedef ap_uint<4>  uint4;
typedef ap_uint<32> uint32;
typedef ap_uint<64> uint64;

// -------------------------------------------------------
// S-Box (4-bit substitution)
// -------------------------------------------------------
uint4  sbox(uint4 in);

// -------------------------------------------------------
// Round functions
// -------------------------------------------------------
uint32 sustitution(uint32 in);
uint32 permutation(uint32 in);
uint32 permutation_inverse(uint32 in);

// -------------------------------------------------------
// Key mixing (overloaded for 4-bit and 32-bit operands)
// -------------------------------------------------------
uint4  key_mixing(uint4  in, uint4  round_key);
uint32 key_mixing(uint32 in, uint32 round_key);

// -------------------------------------------------------
// Sub-block helpers
// -------------------------------------------------------
uint4  select_subblock(uint32 state, uint4 sel);
void   update_subblock(uint32 &state, uint4 sel, uint4 val);

// -------------------------------------------------------
// Round primitives
// -------------------------------------------------------
void   serial_round(uint32 &state, uint32 round_key);
uint32 serial_last_round_correction(uint32 in, uint32 round_key);

// -------------------------------------------------------
// Key schedule
// -------------------------------------------------------
uint32 key_schedule(uint64 &key, int round);

// -------------------------------------------------------
// Top-level cipher  (AXI-Lite interface)
// -------------------------------------------------------
uint32 cifrador_serial(uint32 plaintext, uint64 key);

#endif // CIFRADOR_SERIAL_H