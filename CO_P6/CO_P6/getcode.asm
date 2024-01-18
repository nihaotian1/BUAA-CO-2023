ori $1, $zero, 1
ori $2, $zero, 2
slt $3, $1,$2
andi $4, $3,5
or $5,$3,$4
addi $3,$4,7
sltu $6,$5,$3
andi $zero,$2,8
addi $6,$1,9
addi $3,$5,10
slt $9, $3,$6
sw $6,0($9)
lw $10,0($9)
mult $3,$4
div $3,$2
mfhi $11
mflo $12
mthi $3
mtlo $2
mfhi $11
mflo $12

bne $1,$2,label
nop
add $5,$5,$5
label:
add $1,$1,$1
bne $1,$2,label
nop
lui $1,100
