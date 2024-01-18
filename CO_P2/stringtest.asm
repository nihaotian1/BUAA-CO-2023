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

.macro scanChar(%i)
li $v0, 12
syscall
move %i, $v0
.end_macro

.data
    str1: .space 20
    str2: .space 20

.text

# s0 = n
scanInt($s0)

# s1 = str1
# s2 = str2
la $s1, str1
la $s2, str2

# t5 = str1
# t6 = str2
move $t5, $s1 # t5 = str[0]
add $t6, $s0, $s2 # n + str2
addi $t6, $t6, -1 # t6 = str[n - 1]

# t0 = i, i++, i < n
li $t0, 0
L1:
    beq $t0, $s0, L1end
    # t2 = val
    scanChar($t2)
    sb $t2, 0($t5)
    sb $t2, 0($t6)
    addi $t5, $t5, 1
    addi $t6, $t6, -1
    addi $t0, $t0, 1
    j L1
L1end:

# s3 = flag
li $s3, 1
# t0 = i, i++, i < n
li $t0, 0
# t1, t2 = addr(str1, str2)
move $t1, $s1
move $t2, $s2
L2:
    beq $t0, $s0, L2end
    # t3 = str1[i], t4 = str2[i]
    lb $t3, 0($t1)
    lb $t4, 0($t2)
    beq $t3, $t4, else
    ifnot:
        li $s3, 0
    else:
    addi $t1, $t1, 1
    addi $t2, $t2, 1
    addi $t0, $t0, 1
    j L2
L2end:

printInt($s3)
done
