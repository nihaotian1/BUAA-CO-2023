
.data
	a: .asciiz "dopea"
	b: .word 100
	
.text
	li $t0, 1
	sw $t0, b($0)
	lw $t0, b($0)
	