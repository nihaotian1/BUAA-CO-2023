.text
# test MoveForward of CP0
ori $1, $2, 0x3030
sw $1, 0($0)
ori $1, $0, 0xffff
lw $1, 0($0)
mtc0 $1, $14
eret

# test EPC
ori $3, 0x3030
sw $3, 0($0)
ori $3, 0xffff
lw $3, 0($0)
mtc0 $3, $14
eret

addi $4, $4, 1
addi $4, $4, 1
addi $4, $4, 1
addi $4, $4, 1
addi $4, $4, 1
addi $4, $4, 1
addi $4, $4, 1
addi $4, $4, 1
addi $4, $4, 1

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
