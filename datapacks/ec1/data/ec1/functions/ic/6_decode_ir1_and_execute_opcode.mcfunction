# Instruction set:

# Data transfer:
# 010 ld1
# 011 ld1i
# 020 ld2
# 021 ld2i
# 030 st

# Arithmetic
# 100 add
# 101 addcc
# 110 sub
# 111 subcc
# 120 mul
# 121 mulcc
# 130 div
# 131 divcc
# 140 mod
# 141 modcc

#branch
# 200 bz
# 201 bpos
# 202 bneg
# 203 bu
# 210 call
# 211 ret

# DT
execute if score ir1 cpuRegs matches 010 run function ec1:is/dt/ld1/1_ir2_to_mar
execute if score ir1 cpuRegs matches 011 run function ec1:is/dt/ld1i/1_ir2_to_mar
execute if score ir1 cpuRegs matches 020 run function ec1:is/dt/ld2/1_ir2_to_mar
execute if score ir1 cpuRegs matches 021 run function ec1:is/dt/ld2i/1_ir2_to_mar
execute if score ir1 cpuRegs matches 030 run function ec1:is/dt/st/1_r_to_br

# Arith
execute if score ir1 cpuRegs matches 100
execute if score ir1 cpuRegs matches 101
execute if score ir1 cpuRegs matches 110
execute if score ir1 cpuRegs matches 111
execute if score ir1 cpuRegs matches 120
execute if score ir1 cpuRegs matches 121
execute if score ir1 cpuRegs matches 130
execute if score ir1 cpuRegs matches 131
execute if score ir1 cpuRegs matches 140
execute if score ir1 cpuRegs matches 141

# Branch
execute if score ir1 cpuRegs matches 200
execute if score ir1 cpuRegs matches 201
execute if score ir1 cpuRegs matches 202
execute if score ir1 cpuRegs matches 203
execute if score ir1 cpuRegs matches 210
execute if score ir1 cpuRegs matches 211



