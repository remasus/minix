//===-- X86InstrSGX.td - SGX Instruction Set Extension -----*- tablegen -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file describes the instructions that make up the Intel SGX instruction
// set.
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// SGX instructions

// ENCLS - Execute an Enclave System Function of Specified Leaf Number
def ENCLS : I<0x01, MRM_CF, (outs), (ins),
             "encls", []>, TB, Requires<[HasSGX]>;

// ENCLU - Execute an Enclave User Function of Specified Leaf Number
def ENCLU : I<0x01, MRM_D7, (outs), (ins),
             "enclu", []>, TB, Requires<[HasSGX]>;
