.macro getChar(%i)
li $v0, 12
syscall
move %i, $v0
.end_macro

.macro printStr(%i)
li $v0, 4
move $a0, %i
syscall
.end_macro

.macro printInt(%i)
li $v0, 1
move $a0, %i
syscall
.end_macro

.macro putChar(%i)
li $v0, 11
move $a0, %i
syscall
.end_macro

.macro scanInt(%i)
li $v0, 5
syscall
move %i, $v0
.end_macro

.macro cal_pos(%des, %i)
sll %des, %i, 2
.end_macro

.macro done
li $v0, 10
syscall
.end_macro


.data:
    cnt: .word 0:26
    n: .asciiz "\n"
    spc: .asciiz " "
    alpha : .asciiz "abcdefghijklmnopqrstuvwxyz"
.text

# s0 = n
scanInt($s0)

# t0 = i
li $t0, 0
loop:
    beq $t0, $s0, le
    # t1 = char
    getChar($t1)
    # "a" = 97
    addi $t1, $t1, -97
    # t2 = pos
    cal_pos($t2, $t1)
    # t3 = cnt[char], cnt[char]++
    lw $t3, cnt($t2)
    addi $t3, $t3, 1
    sw $t3, cnt($t2)
    addi $t0, $t0, 1
    j loop
le:

li $t0, 0
li $s1, 26

# s2 = " ", s3 = "\n"
la $s2, spc
la $s3, n
L1:
    beq i, $s1, L1end
    # t1 = pos
    cal_pos(j, $t0)
    lw j, cnt(j)
    # if cnt[i] > 0 
    blez j, else
    # t2 = char
    if:
        lb $t2, alpha($t0)
        putChar($t2)
        printStr($s2)
        printInt($t1)
        printStr($s3)
        j exit
    else:
    exit:
    addi $t0, $t0, 1
    j L1
L1end:
done
