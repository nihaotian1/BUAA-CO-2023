.text
lui $0, 0xffff
ori $0, $0, 0x8bf5
lui $1, 0xffff
ori $1, $1, 0xa2d0
lui $2, 0xffff
ori $2, $2, 0xa60d
lui $3, 0xffff
ori $3, $3, 0x86d0
lui $4, 0xffff
ori $4, $4, 0x5ce5
lui $5, 0xffff
ori $5, $5, 0x62d0
lui $6, 0xffff
ori $6, $6, 0xf293
lui $7, 0xffff
ori $7, $7, 0xa322
lui $8, 0xffff
ori $8, $8, 0xe385
lui $9, 0xffff
ori $9, $9, 0xf112
lui $10, 0xffff
ori $10, $10, 0xfe67
lui $11, 0xffff
ori $11, $11, 0x949
lui $12, 0xffff
ori $12, $12, 0xae2b
lui $13, 0xffff
ori $13, $13, 0x694b
lui $14, 0xffff
ori $14, $14, 0xef39
lui $15, 0xffff
ori $15, $15, 0xe0db
lui $16, 0xffff
ori $16, $16, 0xbe1
lui $17, 0xffff
ori $17, $17, 0xe110
lui $18, 0xffff
ori $18, $18, 0xe5cb
lui $19, 0xffff
ori $19, $19, 0x6be3
lui $20, 0xffff
ori $20, $20, 0xd675
lui $21, 0xffff
ori $21, $21, 0x2b14
lui $22, 0xffff
ori $22, $22, 0xfe82
lui $23, 0xffff
ori $23, $23, 0x76e9
lui $24, 0xffff
ori $24, $24, 0x66ef
lui $25, 0xffff
ori $25, $25, 0x5c8a
lui $26, 0xffff
ori $26, $26, 0x432c
lui $27, 0xffff
ori $27, $27, 0xc9d
lui $28, 0xffff
ori $28, $28, 0xa2ec
lui $29, 0xffff
ori $29, $29, 0x8137
lui $30, 0xffff
ori $30, $30, 0x1be0
lui $31, 0xffff
ori $31, $31, 0xc443
jal jump0
slt $8, $31, $7
lui $23, 0x0
mtc0 $23, $12
sw $9, 8192($23) # @    3114
nop
jal jump1
sh $18, -4385($31) # @    3120
mflo $13
div $13, $3
bne $13, $16, label0
nop
label1:
lui $20, 0x0
nop
sltu $16, $20, $23
lh $7, 1($20) # @    3140
mflo $25
beq $25, $18, label2
nop
label3:
and $23, $27, $22
slt $7, $23, $17
nop
mtlo $23
andi $3, $22, 0x3e78
divu $3, $17
mtc0 $3, $12
slt $9, $3, $9
mfc0 $26, $12
nop
divu $26, $22
slt $13, $26, $23
mfc0 $2, $13
slt $19, $2, $26
beq $2, $19, label4
nop
label5:
lh $13, -4385($31) # @    3190
mtc0 $13, $12
mtlo $13
mtc0 $13, $14
sltu $24, $11, $20
beq $24, $4, label6
nop
label7:
addi $9, $17, 9758
sltu $18, $9, $17
andi $18, $9, 0xc330
beq $9, $20, label8
nop
label9:
lui $4, 0xdf49
nop
mthi $4
bne $4, $8, label10
nop
label11:
jal jump2
syscall
nop
mfc0 $12, $12
mtc0 $12, $14
nop
mtc0 $12, $12
jal jump3
nop
addi $8, $22, 16088
sltu $5, $8, $29
slt $21, $8, $5
slt $1, $8, $21
jal jump4
sltu $15, $31, $2
mfhi $1
nop
mult $1, $3
sltu $10, $1, $9
sltu $29, $6, $21
sw $25, 8192($29) # @    3234
slt $20, $29, $25
sw $20, 4096($29) # @    323c
ori $28, $22, 0x6e3f # @    3240
mtc0 $28, $14
slt $4, $28, $25
mtc0 $28, $12
mfc0 $14, $14
syscall
sh $14, 4099($20) # @    325c
mtc0 $14, $12
bne $14, $6, label12
nop
label13:
andi $11, $11, 0x7c10
divu $11, $1
bne $11, $31, label14
nop
label15:
lui $29, 0x0
mult $29, $29
sltu $6, $29, $29
slt $22, $29, $6
mfc0 $18, $13
slt $20, $18, $30
mtlo $18
sub $3, $18, $1
or $25, $12, $24
sw $25, -24127($28) # @    32a4
mthi $25
nop
mfc0 $24, $12
divu $24, $18
mtc0 $24, $14
bne $24, $14, label16
nop
label17:
lb $13, 1($7) # @    32c4
nop
lb $12, 2($13) # @    32d0
sh $15, 1($13) # @    32d4
sltu $2, $7, $4
bne $2, $5, label18
nop
label19:
slt $1, $21, $4
divu $1, $17
mtc0 $1, $12
mthi $1
jal jump5
sh $31, 3($24) # @    32fc
mfhi $31
mtc0 $31, $12
lb $2, 4098($31) # @    330c
div $31, $8
lb $13, 8193($15) # @    3310
beq $13, $4, label20
nop
label21:
lui $25, 0x0
sh $11, 1($25) # @    3324
slt $23, $25, $11
sw $8, 8192($25) # @    332c
slt $22, $27, $3
sh $22, 8195($10) # @    3334
divu $22, $28
lb $19, 8191($22) # @    333c
mflo $17
sb $23, 3($17) # @    3344
mtc0 $17, $14
bne $17, $6, label22
nop
label23:
add $27, $26, $17
or $6, $27, $1
nop
div $27, $3
lh $26, 4097($16) # @    3364
beq $26, $19, label24
nop
label25:
jal jump6
mtc0 $31, $12
mtc0 $31, $12
jal jump7
lh $19, -4993($31) # @    3380
addi $1, $1, -13514
mtlo $1
sltu $10, $1, $10
andi $10, $1, 0x5f45
sltu $27, $4, $29
div $27, $3
sltu $25, $27, $29
sb $27, 0($25) # @    33a0
mfc0 $17, $13
sw $10, 0($17) # @    33a8
and $25, $17, $6
sh $28, 3($17) # @    33b0
lh $30, 4099($16) # @    33b0
sb $2, 3842($30) # @    33b8
mtc0 $30, $12
mtc0 $30, $14
mfhi $19
mtc0 $19, $12
sw $19, -800($18) # @    33d8
sb $19, 7395($18) # @    33dc
jal jump8
sltu $20, $31, $14
lui $5, 0xd9ce
mtc0 $5, $14
slt $15, $5, $31
mult $5, $15
mfc0 $9, $13
mtc0 $9, $12
slt $8, $9, $26
bne $9, $8, label26
nop
label27:
lb $1, -254($30) # @    3410
nop
sh $1, 7393($18) # @    341c
sltu $26, $1, $18
slt $18, $4, $28
syscall
mtc0 $18, $12
sh $28, 4096($18) # @    3430
bne $18, $28, label28
nop
label29:
mfhi $1
mtc0 $1, $14
mtc0 $1, $14
mtc0 $1, $12
andi $7, $17, 0xa33d
bne $7, $1, label30
nop
label31:
jal jump9
sw $25, -9324($31) # @    3468
mflo $25
mtc0 $25, $14
multu $25, $6
bne $25, $22, label32
nop
label33:
jal jump10
slt $14, $31, $27
mflo $10
mtc0 $10, $12
slt $25, $10, $24
mtc0 $10, $12
lui $27, 0x77e
nop
sltu $4, $27, $31
mtc0 $27, $12
sltu $1, $11, $26
beq $1, $15, label34
nop
label35:
lh $10, 3($17) # @    34c0
sltu $1, $10, $21
sw $10, 8192($1) # @    34cc
mtlo $10
sltu $23, $16, $4
beq $23, $31, label36
nop
label37:
addi $12, $26, 19655
bne $12, $7, label38
nop
label39:
slt $20, $25, $2
sb $9, 3($20) # @    34f0
slt $14, $20, $25
beq $20, $14, label40
nop
label41:
lui $17, 0x2b15
nop
beq $17, $9, label42
nop
label43:
mfhi $10
slt $31, $10, $10
beq $10, $31, label44
nop
label45:
jal jump11
mtlo $31
slt $28, $27, $6
sw $24, 0($28) # @    352c
sb $29, 3($28) # @    3530
mtc0 $28, $12
mfc0 $26, $14
add $31, $26, $4
bne $26, $31, label46
nop
label47:
addi $10, $23, -19462
beq $10, $18, label48
nop
label49:
mfc0 $4, $12
beq $4, $30, label50
nop
label51:
slt $1, $24, $18
sw $1, 2258($9) # @    3568
ori $16, $1, 0x36d4 # @    356c
mtc0 $1, $12
mfc0 $28, $14
divu $28, $18
mthi $28
mtc0 $28, $12
lui $10, 0xe086
slt $3, $10, $1
beq $10, $3, label52
nop
label53:
jal jump12
multu $31, $24
addi $14, $25, -26731
mtc0 $14, $12
beq $14, $24, label54
nop
label55:
sub $3, $23, $5
divu $3, $14
sltu $27, $3, $9
nop
lh $27, 8194($1) # @    35c4
mtc0 $27, $14
slt $19, $27, $17
bne $27, $19, label56
nop
label57:
slt $29, $21, $9
bne $29, $2, label58
nop
label59:
mfc0 $14, $12
sltu $12, $14, $13
mtc0 $14, $12
slt $4, $14, $10
lui $30, 0x0
mtlo $30
sltu $20, $30, $25
sh $20, 3($30) # @    360c
slt $13, $2, $29
bne $13, $29, label60
nop
label61:
andi $26, $5, 0x5962
bne $26, $21, label62
nop
label63:
lui $16, 0x0
mtc0 $16, $14
mtc0 $16, $14
mtc0 $16, $12
mfc0 $4, $14
sltu $9, $4, $28
beq $4, $9, label64
nop
label65:
lui $6, 0x59e9
mtc0 $6, $12
nop
nop
mfc0 $11, $12
bne $11, $24, label66
nop
label67:
lw $1, 0($26) # @    3670
lb $31, 4096($1) # @    3678
sltu $1, $1, $22
slt $16, $1, $1
mfc0 $13, $13
sw $13, -1($15) # @    3688
sw $13, 8192($9) # @    368c
andi $9, $13, 0xbe0a
lui $4, 0x0
lh $2, 4099($4) # @    3698
sltu $26, $4, $2
lb $28, 8192($4) # @    36a0
lh $18, 0($28) # @    36a0
sltu $29, $18, $9
sb $18, 0($28) # @    36ac
multu $18, $28
lui $2, 0x8073
beq $2, $19, label68
nop
label69:
lh $26, 1($25) # @    36bc
mtc0 $26, $12
sw $20, 8192($26) # @    36cc
sb $13, 1($26) # @    36d0
jal jump13
lh $9, -14041($31) # @    36d8
mfc0 $18, $12
mtc0 $18, $12
sb $30, 2($18) # @    36e8
sw $18, 8192($30) # @    36ec
lui $9, 0x15eb
sltu $19, $9, $22
slt $18, $9, $19
sltu $21, $9, $18
slt $5, $8, $6
mtc0 $5, $14
mtc0 $5, $14
sltu $31, $5, $11
jal jump14
lb $13, -10014($31) # @    371c
jal jump15
slt $20, $31, $15
lui $20, 0x0
lh $11, 3($20) # @    372c
mtc0 $20, $14
multu $20, $28
mfhi $9
mtc0 $9, $14
mtc0 $9, $12
mtc0 $9, $12
beq $0, $0, end
nop
jump0:
nop
jr $31
nop
jump1:
sltu $25, $31, $18
jr $31
nop
label0:
bne $13, $16, label1
nop
label2:
beq $25, $18, label3
nop
label4:
beq $2, $19, label5
nop
label6:
beq $24, $4, label7
nop
label8:
beq $9, $20, label9
nop
label10:
bne $4, $8, label11
nop
jump2:
sw $31, 8192($19) # @    31e4
jr $31
nop
jump3:
slt $22, $31, $14
jr $31
nop
jump4:
nop
jr $31
nop
label12:
bne $14, $6, label13
nop
label14:
bne $11, $31, label15
nop
label16:
bne $24, $14, label17
nop
label18:
bne $2, $5, label19
nop
jump5:
sb $11, -8957($31) # @    32fc
jr $31
nop
label20:
beq $13, $4, label21
nop
label22:
bne $17, $6, label23
nop
label24:
beq $26, $19, label25
nop
jump6:
jr $31
nop
jump7:
slt $27, $31, $28
jr $31
nop
jump8:
sh $20, -13287($31) # @    33e4
jr $31
nop
label26:
bne $9, $8, label27
nop
label28:
bne $18, $28, label29
nop
label30:
bne $7, $1, label31
nop
jump9:
ori $14, $31, 0x68c4 # @    3468
jr $31
nop
label32:
bne $25, $22, label33
nop
jump10:
or $1, $31, $14
jr $31
nop
label34:
beq $1, $15, label35
nop
label36:
beq $23, $31, label37
nop
label38:
bne $12, $7, label39
nop
label40:
beq $20, $14, label41
nop
label42:
beq $17, $9, label43
nop
label44:
beq $10, $31, label45
nop
jump11:
nop
jr $31
nop
label46:
bne $26, $31, label47
nop
label48:
beq $10, $18, label49
nop
label50:
beq $4, $30, label51
nop
label52:
beq $10, $3, label53
nop
jump12:
mtlo $31
jr $31
nop
label54:
beq $14, $24, label55
nop
label56:
bne $27, $19, label57
nop
label58:
bne $29, $2, label59
nop
label60:
bne $13, $29, label61
nop
label62:
bne $26, $21, label63
nop
label64:
beq $4, $9, label65
nop
label66:
bne $11, $24, label67
nop
label68:
beq $2, $19, label69
nop
jump13:
add $19, $31, $9
jr $31
nop
jump14:
lw $13, 18656($31) # @    371c
jr $31
nop
jump15:
slt $30, $31, $20
jr $31
nop
end:
nop
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
