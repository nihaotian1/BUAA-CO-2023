.macro done
li $v0, 10
syscall
.end_macro

.macro scanInt(%i)
li $v0, 5
syscall
move %i, $v0
.end_macro

.macro printInt(%i)
li $v0, 1
move $a0, %i
syscall
.end_macro

.macro printStr(%i)
li $v0, 4
move $a0, %i
syscall
.end_macro

.macro cal_pos(%des, %i, %j, %num)
mult	%i, %num			# %i *%num1 = Hi and Lo registers
mflo	%des					# co%desLo to $t2
add		%des, %des, %j		# %des =%des1 %jt2
sll		%des, %des, 2			# %des =%des1 2< 0
.end_macro

.data:
    A: .word 0:64
    spc: .asciiz " "
    n: .asciiz "\n"
    str: .asciiz "The result is:\n"

.text
# s0 = n, s1 = m
scanInt($s0)
scanInt($s1)

# t0 = i, t1 = j
li $t0, 0
L1:
    beq $t0, $s0, L1end
    li $t1, 0
    L2:
        beq $t1, $s1, L2end
        # t2 = tmp, t3 = pos
        scanInt($t2)
        cal_pos($t3, $t0, $t1, $s1)
        sw $t2, A($t3)
        addi $t1, $t1, 1
        j L2
    L2end:
    addi $t0, $t0, 1
    j L1
L1end:

li $t0, 0
L3:
    beq $t0, $s0, L3end
    li $t1, 0
    L4:
        beq $t1, $s1, L4end
        # t2 = tmp, t3 = pos, t4 = A[i][j]
        scanInt($t2)
        cal_pos($t3, $t0, $t1, $s1)
        lw $t4, A($t3)
        add $t2, $t2, $t4
        sw $t2, A($t3) 
        addi $t1, $t1, 1
        j L4
    L4end:
    addi $t0, $t0, 1
    j L3
L3end:


# s2 = " ", s3 = "\n"
la $s2, spc
la $s3, n
la $s4, str
printStr($s4)

# t0 = i, t1 = j
li $t0, 0
L5:
    beq $t0, $s1, L5end
    li $t1, 0
    L6:
        beq $t1, $s0, L6end
        # print A[j][i]
        # t2 = addr -> val
        cal_pos($t2, $t1, $t0, $s1)
        lw $t2, A($t2)
        printInt($t2)
        printStr($s2)
        addi $t1, $t1, 1
        j L6
    L6end:
    printStr($s3)
    addi $t0, $t0, 1
    j L5
L5end:
