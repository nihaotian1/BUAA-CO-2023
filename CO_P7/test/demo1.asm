# 程序首先从这里运行
.text
la	$ra, pos_1
addi	$ra, $ra, 1
jr	$ra
ori	$s0, $0, 100
ori	$s0, $0, 200 #invalid
pos_1: 
addi	$s1, $s0, 20 #invalid
addi	$s1, $s0, 50 
     	             #F_exc_AdEL

nop                  #you can change it 0xf000000f
li	$t0, 13
mfc0	$t0, $t1     #D_exc_RI

lui	$s2, 0x7fff
lui	$s3, 0x7fff
add	$s4, $s2, $s3
    #E_exc_Ov_add
and	$5, $s2, $s3


lui	$s2, 0x7fff
addi	$s3, $s2, 0x7fffffff  
    #E_exc_Ov_addi
and	$5, $s2, $s3

lui	$s2, 0x7fff
lui	$s3, 0x8fff
sub	$s4, $s3, $s2
    #E_exc_Ov_sub
and	$5, $s2, $s3

li	$s0, 0x12345678
sw	$s0, 0($0)
lw	$s1, 3($0)
lw	$s2, 0($0)
    #D_exc_AdEL
and	$5, $s2, $s3

li	$s0, 0x8fffffff
sw	$s0, 0($0)
lh	$s1, 1($0)
lh	$s2, 2($0)
    #D_exc_AdEL
and	$5, $s2, $s3

li	$s0, 0x80000000
sw	$s0, 0($0)
lhu	$s1, 1($0)
lhu	$s2, 2($0)
    #D_exc_AdEL
and	$5, $s1, $s2

li	$s0, 0x7f00
li	$s1, 10
sw	$s1, 0($s0)
lh	$s2, 0($s0)
lw	$s3, 0($s0)
    #D_exc_AdEL
and	$5, $s1, $s2

li	$s0, 0x7010
li	$s1, 10
sw	$s1, 0($s0)
li	$s0, 0x2800
sw	$s1, 0($s0)
    #D_exc_AdEL
and	$5, $s1, $s2

li	$s0, 0x12ab34cd
sw	$s0, 3($0)
sw	$s0, 4($0)
    #D_exc_AdEL
and	$5, $s1, $s2

li	$s0, 0xabcd
sh	$s0, 1($0)
sh	$s0, 2($0)
    #D_exc_AdEL
and	$5, $s1, $s2

li	$s0, 0x7f10
li	$s1, 10
sh	$s1, 0($s0)
sw	$s1, 0($s0)
    #D_exc_AdEL
and	$5, $s1, $s2

li	$s0, 0x7f10
li	$s1, 10
sw	$s1, 8($s0)
    #D_exc_AdEL
and	$5, $s1, $s2


li	$s0, 0x8ff0
li	$s1, 100
sh	$s1, 0($s0)
sh	$s1, 0($s0)
   #D_exc_AdEL
and	$5, $s1, $s2
end:
    beq $0, $0, end
    nop

.ktext 0x4180
_entry:
    # 保存上下文
    beq $0, $0, _save_context
    nop

_main_handler:
    # 取出 ExcCode
    mfc0 $k0, $13
    ori $k1, $0, 0x7c
    and $k0, $k0, $k1

    # 如果是中断，先响应，再恢复上下文
    sb $0, 0x7f20($0) # 相应一下
    beq $k0, $0, _restore_context
    nop

    # 将 EPC + 4，即处理异常的方法就是跳过当前指令
    mfc0 $k0, $14
    addi $k0, $k0, 4
    mtc0 $k0, $14
    beq $0, $0, _restore_context
    nop

_exception_return:
    eret

_save_context:
    ori $k0, $0, 0x1000     # 在栈上找一块空间保存现场
    addi $k0, $k0, -256
    sw $sp, 116($k0)        # 最先保存栈指针
    addi $sp, $k0, 0

    # 依次保存通用寄存器（注意要跳过 $sp）、HI 和 LO
    sw $1, 4($sp)
    sw $2, 8($sp)
    # ......
    sw $31, 124($sp)
    mfhi $k0
    mflo $k1
    sw $k0, 128($sp)
    sw $k1, 132($sp)

    beq $0, $0, _main_handler
    nop

_restore_context:
    # 依次恢复通用寄存器（注意要跳过 $sp）、 HI 和 LO
    lw $1, 4($sp)
    lw $2, 8($sp)
    # ......
    lw $31, 124($sp)
    lw $k0, 128($sp)
    lw $k1, 132($sp)
    mthi $k0
    mtlo $k1

    # 最后恢复栈指针
    lw $sp, 116($sp)

    beq $0, $0, _exception_return
    nop
