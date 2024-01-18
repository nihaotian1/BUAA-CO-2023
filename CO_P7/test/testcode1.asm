# test for move and stall
lui $1, 0x2123
mtc0 $1, $12
mfc0 $2, $12
add $2, $2, $1
mtc0 $2, $12
lui $1, 0x8000
add $2, $1, $1
sub $1, $0, $1
.ktext 0x4180
eret
addi $1, $3, 200