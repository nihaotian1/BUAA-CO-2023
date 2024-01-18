.text
lui $1, 0
ori $1, 0x3020
lui $2, 0
ori $2, 0x3024
mtc0 $1, $14
mtc0 $2, $14
eret
addi $5, $5, 1
addi $5, $5, 1
addi $5, $5, 1
addi $5, $5, 1
addi $5, $5, 1
addi $5, $5, 1
addi $5, $5, 1

.ktext 0x4180
_entry:
    beq $0, $0, _save_context
    nop

_main_handler:
    mfc0 $k0, $13
    ori $k1, $0, 0x7c
    and $k0, $k0, $k1


    sb $0, 0x7f20($0)
    beq $k0, $0, _restore_context
    nop


    mfc0 $k0, $14
    addi $k0, $k0, 4
    mtc0 $k0, $14
    beq $0, $0, _restore_context
    nop

_exception_return:
    eret

_save_context:
    ori $k0, $0, 0x1000
    addi $k0, $k0, -256
    sw $sp, 116($k0)
    addi $sp, $k0, 0

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

    lw $1, 4($sp)
    lw $2, 8($sp)
    # ......
    lw $31, 124($sp)
    lw $k0, 128($sp)
    lw $k1, 132($sp)
    mthi $k0
    mtlo $k1


    lw $sp, 116($sp)

    beq $0, $0, _exception_return
    nop