# RUN: llvm-mc --triple stubv32 < %s -show-inst | FileCheck %s --check-prefix CHECK-INST
# RUN: llvm-mc --triple stubv32 < %s -show-encoding | FileCheck %s --check-prefix CHECK-ENCODING

# CHECK-ENCODING: encoding: [0x33,0xc5,0x65,0x00]
# CHECK-INST:      <MCInst #{{.*}} XOR
# CHECK-INST-NEXT:  <MCOperand Reg:11>
# CHECK-INST-NEXT:  <MCOperand Reg:12>
# CHECK-INST-NEXT:  <MCOperand Reg:13>>
xor a0, a1, a2
