# check lui & ori

# 1
lui $1, 0x0000
ori $1, 0x0001

# -1
lui $2, 0xffff
ori $2, 0xffff

# bound +
lui $3, 0x7fff
ori $3, 0xffff

# bound -
lui $4, 0x1000
ori $4, 0x0000

# check arthmetic ins
add $5, $1, $2
add $6, $1, $1
sub $7, $2, $1
sub $8, $1, $2

# add $5, $3, $1
add $6, $4, $2
# sub $7, $3, $2
sub $8, $4, $1

# check sw and lw
lui $5, 0x0000
ori $5, 0x2ffc
sw $3, 0($0)
sw $3, 4($0)
sw $4, 8($0)
sw $3, -4($5)
sw $4, -8($5)

lw $0, 0($0)
lw $6, 0($0)
lw $6, 4($0)
lw $6, 8($0)
lw $6, -4($5)
lw $6, -8($5) 

# check beq jump
L1:
beq $2, $2, L3 # jump down
L2:
add $t1, $t1, $t1
beq $1, $1, L2
L3:
beq $1, $3, L2
beq $3, $3, L1 #jump up
