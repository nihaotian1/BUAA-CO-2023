# in : 0 < n <=8
# 2 * n * n -- matrix A, B
# output : n * n = A * B
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
    B: .word 0:64
    C: .word 0:64
    n: .asciiz "\n"
    spc: .asciiz " "

.text
# s0 = n
scanInt($s0)

# scan A and store
# t0 = i, t1 = j
li $t0, 0
L1: # i < n
beq $t0, $s0, L1end
li $t1, 0
L2: # j < n
beq $t1, $s0, L2end
# t2 = val, t3 = des
scanInt($t2)
cal_pos($t3, $t0, $t1, $s0)
sw $t2, A($t3)
addi $t1, $t1, 1
j L2
L2end:
addi $t0, $t0, 1
j L1
L1end:

# scan B and store
# t0 = i, t1 = j
li $t0, 0
L3: # i < n
beq $t0, $s0, L3end
li $t1, 0
L4: # j < n
beq $t1, $s0, L4end
# t2 = val, t3 = des
scanInt($t2)
cal_pos($t3, $t0, $t1, $s0)
sw $t2, B($t3)
addi $t1, $t1, 1
j L4
L4end:
addi $t0, $t0, 1
j L3
L3end:

# C = A * B
# t0 = i, t1 = j, t2 = k
li $t0, 0
loopi:
    beq $t0, $s0, loopiend
    li $t1, 0
    loopj:
        beq $t1, $s0, loopjend
        li $t2, 0
        li $t3, 0 # c = 0
        loopk:
            beq $t2, $s0, loopkend
            # c[i][j] = sum(a[i][k] * b[k][j])
            # t3 = c, t4 = a[i][k], t5 = b[k][j], t6 = tmp
            cal_pos($t4, $t0, $t2, $s0)
            cal_pos($t5, $t2, $t1, $s0)
            lw $t4, A($t4)
            lw $t5, B($t5)
            mult $t4, $t5
            mflo $t6
            add $t3, $t3, $t6
            addi $t2, $t2, 1
            j loopk
        loopkend:
        # t6 = C[i][j].addr
        cal_pos($t6, $t0, $t1, $s0)
        sw $t3, C($t6)
        addi $t1, $t1, 1
        j loopj 
    loopjend:
    addi $t0, $t0, 1
    j loopi
loopiend:

# output
la $s1, n # s1 = "\n"
la $s2, spc # s2 = " "

# t0 = i, t1 = j
li $t0, 0
lp1:
beq $t0, $s0, lp1end
li $t1, 0
    lp2:
    beq $t1, $s0, lp2end
    # t2 = pos, t3 = val
    cal_pos($t2, $t0, $t1, $s0)
    lw $t3, C($t2)
    printInt($t3)
    printStr($s2)
    addi $t1, $t1, 1 
    j lp2
    lp2end:
printStr($s1)
addi $t0, $t0, 1
j lp1
lp1end:

done