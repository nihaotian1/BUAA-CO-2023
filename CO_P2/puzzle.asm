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

.macro push(%i)
addi $sp, $sp, -4
sw %i, 0($sp)
.end_macro

.macro pop(%i)
lw %i, 0($sp)
addi $sp, $sp, 4
.end_macro

.macro cal_pos(%des, %i, %j, %n)
mult %i, %n # des = i * n
mflo %des
add %des, %des, %j # i * n + j
sll %des, %des, 2
.end_macro

.data:
    matrix: .word 0:49
    log: .word 0:49

.text:
# s0 = n, s1 = m
scanInt($s0)
scanInt($s1)

# sw, t0 = i
li $t0, 0
L1:
    beq $t0, $s0, L1end
    # t1 = j
    li $t1, 0
    L2:
        beq $t1, $s1, L2end
        # t2 = tmp, t3 = pos
        scanInt($t2)
        cal_pos($t3, $t0, $t1, $s1)
        sw $t2, matrix($t3)
        addi $t1, $t1, 1
        j L2
    L2end:
    addi $t0, $t0, 1
    j L1
L1end:

# s2, s3 = to(x, y)

scanInt($a0)
scanInt($a1)
scanInt($s2)
scanInt($s3)

# init ERROR!!!
addi $a0, $a0, -1
addi $a1, $a1, -1
addi $s2, $s2, -1
addi $s3, $s3, -1

# t5 = origin_pos
# init ERROR!!!
cal_pos($t5, $a0, $a1, $s1)
li $t6, 1
sw $t6, matrix($t5)

# s4 = counter
li $s4, 0
jal puzzle
printInt($s4)
done

# puzzle (int x, int y) { 0 <= x < n, 0 <= y < m
#     if(x == desX && y == desY)
#         sum++;
#         return;
#     if(m[x - 1][y] == 0 && in_matrix x >= 0)
#         m[x][y] = 1
#         puzzle(x - 1, y)
#         m[x][y] = 0
#     if(m[x + 1][y] == 0 && in_matrix)
#     if(m[x][y - 1] == 0 && in_matrix)
#     if(m[x][y + 1] == 0 && in_matrix)
#         ...
#         return
# }

# a0 = x, a1 = y, s2, s3 = to(x, y)
puzzle:
    bne $a0, $s2, else1
    bne $a1, $s3, else1
    addi $s4, $s4, 1
    jr $ra
    else1:

    # t0 = new_x, t1 = new_y
    addi $t0, $a0, -1
    move $t1, $a1
    blt $t0, $0, else2
    bge $t0, $s0, else2
    blt $t1, $0, else2
    bge $t1, $s1, else2
    # t2 = pos, t3 = m[][]
    cal_pos($t2, $t0, $t1, $s1) # s1 = m! matrix[n][m]
    lw $t3, matrix($t2)
    bnez $t3, else2
    lw $t3, log($t2)
    bnez $t3, else2
    li $t3, 1
    sw $t3, log($t2)
        push($ra)
        push($a0)
        push($a1)
        push($t2)
        move $a0, $t0
        move $a1, $t1
        jal puzzle
        pop($t2)
        pop($a1)
        pop($a0)
        pop($ra)
    sw $0, log($t2)
    else2:

    # t0 = new_x, t1 = new_y
    addi $t0, $a0, 1
    move $t1, $a1
    blt $t0, $0, else3
    bge $t0, $s0, else3
    blt $t1, $0, else3
    bge $t1, $s1, else3
    # t2 = pos, t3 = m[][]
    cal_pos($t2, $t0, $t1, $s1) # s1 = m! matrix[n][m]
    lw $t3, matrix($t2)
    bnez $t3, else3
    lw $t3, log($t2)
    bnez $t3, else3
    li $t3, 1
    sw $t3, log($t2)
        push($ra)
        push($a0)
        push($a1)
        push($t2)
        move $a0, $t0
        move $a1, $t1
        jal puzzle
        pop($t2)
        pop($a1)
        pop($a0)
        pop($ra)
    sw $0, log($t2)
    else3:

    # t0 = new_x, t1 = new_y
    move $t0, $a0
    addi $t1, $a1, -1 # new_y = y - 1
    blt $t0, $0, else4
    bge $t0, $s0, else4
    blt $t1, $0, else4
    bge $t1, $s1, else4
    # t2 = pos, t3 = m[][]
    cal_pos($t2, $t0, $t1, $s1) # s1 = m! matrix[n][m]
    lw $t3, matrix($t2)
    bnez $t3, else4
    lw $t3, log($t2)
    bnez $t3, else4
    li $t3, 1
    sw $t3, log($t2)
        push($ra)
        push($a0)
        push($a1)
        push($t2)
        move $a0, $t0
        move $a1, $t1
        jal puzzle
        pop($t2)
        pop($a1)
        pop($a0)
        pop($ra)
    sw $0, log($t2)
    else4:

    # t0 = new_x, t1 = new_y
    move $t0, $a0
    addi $t1, $a1, 1 # new_y = y + 1
    blt $t0, $0, else5
    bge $t0, $s0, else5
    blt $t1, $0, else5
    bge $t1, $s1, else5
    # t2 = pos, t3 = m[][]
    cal_pos($t2, $t0, $t1, $s1) # s1 = m! matrix[n][m]
    lw $t3, matrix($t2)
    bnez $t3, else5
    lw $t3, log($t2)
    bnez $t3, else5
    li $t3, 1
    sw $t3, log($t2)
        push($ra)
        push($a0)
        push($a1)
        push($t2)
        move $a0, $t0
        move $a1, $t1
        jal puzzle
        pop($t2)
        pop($a1)
        pop($a0)
        pop($ra)
    sw $0, log($t2)
    else5:

    jr $ra
