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

.macro push(%i)
addi $sp, $sp, -4
sw %i, 0($sp)
.end_macro

.macro pop(%i)
lw %i, 0($sp)
addi $sp, $sp, 4
.end_macro

.macro pos(%des, %i)
sll %des, %i, 2
.end_macro

.data:
    A: .word 0:7
    B: .word 0:7
    space: .asciiz " "
    n: .asciiz "\n"

.text:
    # s0 = n
    scanInt($s0)
    # s1 = " ", s2 = "\n"
    la $s1, space
    la $s2, n
    li $a0, 0
    jal full
    done

full:
            push($ra)
            push($a0)
            push($t0)
    # index >= n
    blt $a0, $s0, else
    # t0 = i, t1 = A[]
    li $t0, 0
    L1:
        beq $t0, $s0, L1end
        pos($t1, $t0)
        lw $t1, A($t1)
        printInt($t1)
        printStr($s1)
        addi $t0, $t0, 1
    j L1
    L1end:
    printStr($s2)
            pop($t0)
            pop($a0)
            pop($ra)
    jr $ra
    else:
    
    # t0 = i
    li $t0, 0
    L2:
        beq $t0, $s0, L2end
        # if symble[i] == 0, t1 = symbol[i]
        pos($t1, $t0)
        lw $t1, B($t1)
        bne $t1, $0, else1
            pos($t1, $a0)
            # t2 = i + 1
            addi $t2, $t0, 1
            sw $t2, A($t1)
            pos($t1, $t0)
            li $t3, 1
            sw $t3, B($t1)
            addi $a0, $a0, 1
            jal full
            pos($t1, $t0)
            sw $0, B($t1)
        else1:
        addi $t0, $t0, 1
        j L2
    L2end:
            pop($t0)
            pop($a0)
            pop($ra)

    jr $ra
