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

.macro cal_pos(%des, %i, %j, %n)
mult %i, %n  # i * n
mflo %des
add %des, %des, %j # i * n + j
sll %des, %des, 2
.end_macro

.data:
    A: .word 0:100
    B: .word 0:100
    C: .word 0:100
    D: .asciiz " "
    E: .asciiz "\n"

.text:

# s0 = m1, s1 = n1, s2 = m2, s3 = n2
scanInt($s0)
scanInt($s1)
scanInt($s2)
scanInt($s3)

# sw A
# t0 = i < m1, t1 = j < n1
li $t0, 0
L1:
    beq $t0, $s0, L1end
    li $t1, 0
    L2:
        beq $t1, $s1, L2end
        # t3 = tmp
        # t4 = addr = i * n + j
        scanInt($t3)
        cal_pos($t4, $t0, $t1, $s1)
        sw $t3, A($t4)
        addi $t1, $t1, 1
        j L2
    L2end:
    addi $t0, $t0, 1
    j L1
L1end:

# sw B
# t0 = i < m2, t1 = j < n2
li $t0, 0
L3:
    beq $t0, $s2, L3end
    li $t1, 0
    L4:
        beq $t1, $s3, L4end
        # t3 = tmp
        # t4 = addr = i * n + j
        scanInt($t3)
        cal_pos($t4, $t0, $t1, $s3)
        sw $t3, B($t4)
        addi $t1, $t1, 1
        j L4
    L4end:
    addi $t0, $t0, 1
    j L3
L3end:

# do conv
# for(i = 0; i <= m1 - m2; i++) {
#     for(int j = 0; j <= n1 - n2; j++) {
#         int sum = 0;
#         for(int k = 0; k < m2; k++) {
#             for(int l = 0; l < n2; l++) {
#                 sum += A[i + k][j + l] * h[k][l];
#             }
#         }
#         C[i][j] = sum;      
#     }
# }

# s4 = m1 - m2, s5 = n1 - n2
sub $s4, $s0, $s2
sub $s5, $s1, $s3
# t0 = i, t1 = j, t2 = k, t3 = l

li $t0, 0
Lc1:
    bgt $t0, $s4, Lc1end
    li $t1, 0
    Lc2:
        bgt $t1, $s5, Lc2end
        li $t2, 0
        # t4 = sum
        li $t4, 0
        Lc3:   
            beq $t2, $s2, Lc3end
            li $t3, 0
            Lc4:
                beq $t3, $s3, Lc4end
                # t5 = i + k, t6 = j + l, t7 = addr
                add $t5, $t0, $t2
                add $t6, $t1, $t3
                cal_pos($t7, $t5, $t6, $s1) #bug!!! wrong notation!!
                lw $t5, A($t7) # t5 = A[i+k][j+l]
                cal_pos($t6, $t2, $t3, $s3)
                lw $t6, B($t6) #t6 = B[k][l]
                mult $t5, $t6
                mflo $t5 # t5 = A * B
                add $t4, $t4, $t5
                addi $t3, $t3, 1
                j Lc4
            Lc4end:
            addi $t2, $t2, 1
            j Lc3
        Lc3end:
        # t5 = addr
        cal_pos($t5, $t0, $t1, $s1) # use n1 for addr finding!
        sw $t4, C($t5) # C[i][j] = sum
        addi $t1, $t1, 1
        j Lc2
    Lc2end:
    addi $t0, $t0, 1
    j Lc1
Lc1end:

# print
li $t0, 0
# t5 = " ", t6 = "\n"
la $t5, D
la $t6, E
Lout1:
    bgt $t0, $s4, Lout1end
    li $t1, 0
    Lout2:
        bgt $t1, $s5, Lout2end
        # t2 = addr
        cal_pos($t2, $t0, $t1, $s1) # use s1 same as sw
        lw $t2, C($t2)
        printInt($t2)
        printStr($t5)
        addi $t1, $t1, 1
        j Lout2
    Lout2end:
    printStr($t6)
    addi $t0, $t0, 1
    j Lout1
Lout1end:
