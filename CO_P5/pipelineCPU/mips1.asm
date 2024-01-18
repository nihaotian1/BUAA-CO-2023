ori $1, $1, 1234
jal fun1
add $2, $1, $1
add $4, $2, $2
beq $0, $0, done 
nop

fun1:
add $3, $2, $1
sub $2, $3, $2
jr $ra
nop
done: