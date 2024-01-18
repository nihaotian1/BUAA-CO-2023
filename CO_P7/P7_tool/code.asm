.text
ori $1, 0xff01
mtc0 $1, $12
lui $1, 0x0000
lui $0, 0xffff
ori $0, $0, 0xc78a
lui $1, 0xffff
ori $1, $1, 0xba02
lui $2, 0xffff
ori $2, $2, 0x436f
lui $3, 0xffff
ori $3, $3, 0x9ea4
lui $4, 0xffff
ori $4, $4, 0x7d2a
lui $5, 0xffff
ori $5, $5, 0xbebb
lui $6, 0xffff
ori $6, $6, 0x8f0d
lui $7, 0xffff
ori $7, $7, 0xd45b
lui $8, 0xffff
ori $8, $8, 0x2077
lui $9, 0xffff
ori $9, $9, 0xe19b
lui $10, 0xffff
ori $10, $10, 0x431c
lui $11, 0xffff
ori $11, $11, 0x5871
lui $12, 0xffff
ori $12, $12, 0xb385
lui $13, 0xffff
ori $13, $13, 0xdc23
lui $14, 0xffff
ori $14, $14, 0x161b
lui $15, 0xffff
ori $15, $15, 0x2e57
lui $16, 0xffff
ori $16, $16, 0x5684
lui $17, 0xffff
ori $17, $17, 0x2a11
lui $18, 0xffff
ori $18, $18, 0x366f
lui $19, 0xffff
ori $19, $19, 0xe46d
lui $20, 0xffff
ori $20, $20, 0x499d
lui $21, 0xffff
ori $21, $21, 0x10ee
lui $22, 0xffff
ori $22, $22, 0x211e
lui $23, 0xffff
ori $23, $23, 0x9bfb
lui $24, 0xffff
ori $24, $24, 0xb16d
lui $25, 0xffff
ori $25, $25, 0xcd0c
lui $26, 0xffff
ori $26, $26, 0xeddd
lui $27, 0xffff
ori $27, $27, 0x9fca
lui $28, 0xffff
ori $28, $28, 0xa26d
lui $29, 0xffff
ori $29, $29, 0xd5b3
lui $30, 0xffff
ori $30, $30, 0xcdc0
lui $31, 0xffff
ori $31, $31, 0xa188
mfc0 $5, $12
slt $16, $5, $13
mtc0 $5, $12
nop
sltu $8, $22, $30
andi $12, $8, 0x4e05
mtc0 $8, $14
nop
mfc0 $4, $14
ori $12, $4, 0x4450 # @    3130
nop
mtc0 $4, $14
jal jump0
mult $31, $14
mtc0 $31, $14
jal jump1
sltu $8, $31, $15
mfc0 $7, $14
slt $23, $7, $7
mtc0 $7, $12
nop
mflo $17
nop
bne $17, $16, label0
nop
label1:
mfc0 $24, $12
multu $24, $9
ori $21, $24, 0x2d13 # @    3174
slt $21, $24, $21
mflo $1
slt $9, $1, $31
nop
mtc0 $1, $14
jal jump2
sh $31, 4096($21) # @    3190
lb $1, 0($21) # @    3190
sh $19, 3($1) # @    3198
bne $1, $2, label2
nop
label3:
mfhi $5
bne $5, $1, label4
nop
label5:
lui $5, 0x470d
nop
sw $5, 0($9) # @    31b8
mtc0 $5, $14
jal jump3
nop
add $17, $26, $1
nop
sltu $3, $17, $22
mtc0 $17, $14
sltu $25, $1, $6
mtc0 $25, $12
nop
bne $25, $4, label6
nop
label7:
jal jump4
syscall
nop
mtc0 $31, $14
mfc0 $22, $12
bne $22, $21, label8
nop
label9:
mfhi $28
nop
beq $28, $29, label10
nop
label11:
lui $4, 0xc1a4
ori $20, 1
divu $4, $20
beq $4, $31, label12
nop
label13:
lui $16, 0x475e
slt $20, $16, $25
nop
mthi $16
lw $6, 16384($23) # @    3230
sh $6, 3($6) # @    3238
multu $6, $28
sb $30, 4097($6) # @    3240
slt $24, $7, $4
andi $6, $24, 0xc4a8
mtlo $24
slt $15, $24, $29
lui $11, 0x0
sh $25, 3($11) # @    3258
beq $11, $21, label14
nop
label15:
slt $12, $15, $15
sw $13, 8192($12) # @    3268
bne $12, $8, label16
nop
label17:
lui $20, 0xe83f
nop
beq $20, $27, label18
nop
label19:
mfhi $5
slt $12, $5, $15
slt $12, $5, $12
nop
addi $18, $4, -25798
ori $20, 1
divu $18, $20
mtc0 $18, $12
bne $18, $12, label20
nop
label21:
lui $11, 0x0
sh $6, 1($11) # @    32ac
lb $12, 3($11) # @    32b0
beq $11, $12, label22
nop
label23:
lui $10, 0xb868
mtlo $10
nop
slt $16, $10, $10
mflo $11
slt $27, $11, $25
mtc0 $11, $14
nop
lui $13, 0x0
sh $30, 4097($13) # @    32e0
sltu $28, $13, $30
sb $13, 4098($28) # @    32e8
jal jump5
sb $22, -13042($31) # @    32f0
addi $23, $25, 25978
bne $23, $25, label24
nop
label25:
lui $19, 0x0
beq $19, $16, label26
nop
label27:
lw $21, 16383($21) # @    3308
sltu $19, $21, $6
sh $19, 3($21) # @    3314
mtc0 $21, $14
mfhi $4
nop
beq $4, $27, label28
nop
label29:
mfc0 $13, $12
mtc0 $13, $12
mtc0 $13, $12
bne $13, $14, label30
nop
label31:
lui $19, 0x0
nop
nop
bne $19, $18, label32
nop
label33:
mfhi $10
mtc0 $10, $14
nop
nop
sltu $23, $2, $19
sltu $3, $23, $22
slt $6, $23, $3
mult $23, $6
lw $20, 8192($23) # @    3370
sw $20, 4096($22) # @    3378
slt $13, $20, $31
mtc0 $20, $12
lb $9, 1($12) # @    3380
lw $26, 16384($9) # @    3388
lb $10, 8193($9) # @    338c
lw $16, 16384($9) # @    3390
slt $7, $7, $30
slt $6, $7, $1
mult $7, $6
mtc0 $7, $14
mfhi $14
syscall
sltu $22, $14, $28
bne $14, $22, label34
nop
label35:
add $5, $3, $17
sltu $5, $5, $21
bne $5, $5, label36
nop
label37:
sltu $31, $11, $13
sh $29, 1($31) # @    33cc
bne $31, $29, label38
nop
label39:
lh $24, 8195($23) # @    33d4
bne $24, $24, label40
nop
label41:
slt $13, $31, $18
sh $10, 4097($13) # @    33e8
sltu $8, $13, $10
slt $29, $13, $8
lui $18, 0x0
sb $18, 4096($3) # @    33f8
slt $30, $18, $3
mtc0 $18, $14
lh $6, 3($19) # @    3400
mult $6, $20
nop
or $2, $6, $19
andi $22, $3, 0xa2c
lh $29, 4099($22) # @    3418
ori $28, 1
div $22, $28
mthi $22
mfc0 $8, $14
sb $13, 8193($8) # @    3428
beq $8, $13, label42
nop
label43:
ori $23, $28, 0xd203 # @    3434
beq $23, $23, label44
nop
label45:
lb $17, 2($18) # @    343c
nop
nop
beq $17, $17, label46
nop
label47:
sltu $28, $22, $3
sltu $8, $28, $14
lb $23, 8195($28) # @    345c
beq $28, $23, label48
nop
label49:
mfc0 $22, $14
mtlo $22
sh $22, 4097($22) # @    3470
lh $6, 8193($22) # @    3474
jal jump6
mtlo $31
mtc0 $31, $14
lui $14, 0x0
mtc0 $14, $14
mtc0 $14, $12
sb $23, 2($14) # @    348c
lui $28, 0x0
sw $22, 4096($28) # @    3494
sltu $29, $28, $24
mtc0 $28, $12
jal jump7
mtc0 $31, $12
sltu $14, $2, $6
slt $3, $14, $17
nop
mtc0 $14, $12
sub $29, $16, $12
ori $20, 1
divu $29, $20
bne $29, $28, label50
nop
label51:
sltu $11, $28, $7
sb $11, 1($21) # @    34cc
sb $5, 8193($11) # @    34d0
sh $22, 1($11) # @    34d4
mfc0 $7, $12
slt $21, $7, $16
nop
sb $13, 2($7) # @    34e4
slt $11, $4, $28
sw $11, 4096($22) # @    34ec
slt $10, $11, $9
sb $2, 2($11) # @    34f4
jal jump8
syscall
nop
mtc0 $31, $12
lui $24, 0x9505
sh $24, 8194($11) # @    3508
beq $24, $11, label52
nop
label53:
mfc0 $12, $12
and $19, $12, $29
sltu $10, $12, $19
bne $12, $10, label54
nop
label55:
lw $19, 0($9) # @    3524
sb $19, 4096($30) # @    352c
slt $5, $19, $20
beq $19, $5, label56
nop
label57:
sltu $19, $16, $7
ori $6, 1
div $19, $6
beq $19, $13, label58
nop
label59:
lb $26, 1($28) # @    3548
beq $26, $7, label60
nop
label61:
sltu $23, $8, $22
mtc0 $23, $12
sw $28, 4096($23) # @    3560
sltu $17, $23, $28
jal jump9
slt $9, $31, $25
jal jump10
mthi $31
mtc0 $31, $14
lb $24, 8192($16) # @    3574
bne $24, $12, label62
nop
label63:
add $25, $23, $30
mtc0 $25, $14
sb $25, 8194($15) # @    358c
mtc0 $25, $14
sltu $27, $9, $22
sb $27, 8192($9) # @    3598
sw $27, 8192($16) # @    359c
slt $13, $27, $22
mfhi $14
mtc0 $14, $12
mtc0 $14, $12
mtc0 $14, $14
ori $16, $11, 0xb19e # @    35b4
bne $16, $17, label64
nop
label65:
mfhi $1
mtc0 $1, $12
mtc0 $1, $14
nop
lw $14, 0($25) # @    35cc
slt $5, $14, $2
bne $14, $5, label66
nop
label67:
sub $28, $3, $11
nop
sltu $2, $28, $29
nop
lui $27, 0x0
nop
sb $24, 8195($27) # @    35f8
sb $27, -35($24) # @    35fc
mfc0 $26, $13
mtc0 $26, $12
sb $17, 8195($26) # @    3608
mthi $26
lui $6, 0xf675
mtc0 $6, $14
nop
nop
jal jump11
slt $16, $31, $3
slt $1, $1, $30
nop
sb $26, 3($1) # @    3630
slt $2, $1, $26
mfhi $14
beq $14, $14, label68
nop
label69:
mfc0 $30, $12
mthi $30
mult $30, $7
bne $30, $6, label70
nop
label71:
jal jump12
sb $27, -5726($31) # @    365c
jal jump13
slt $11, $31, $30
jal jump14
sw $21, -13936($31) # @    366c
mflo $28
sub $23, $28, $21
slt $29, $28, $23
sltu $24, $28, $29
sltu $15, $14, $5
bne $15, $6, label72
nop
label73:
lui $9, 0x6b8a
sltu $1, $9, $28
slt $26, $9, $1
multu $9, $26
lui $6, 0x0
mtlo $6
bne $6, $4, label74
nop
label75:
mflo $9
lh $22, 4097($9) # @    36b0
mtlo $9
mtc0 $9, $14
sltu $5, $21, $26
lb $18, 8193($5) # @    36c0
sw $5, 8192($25) # @    36c4
sw $25, 8192($5) # @    36c8
mfhi $31
sltu $15, $31, $29
sb $15, 2($31) # @    36d4
bne $31, $13, label76
nop
label77:
beq $0, $0, end
nop
jump0:
jr $31
nop
jump1:
lw $8, 20148($31) # @    3148
mtc0 $31, $14
eret
label0:
bne $17, $16, label1
nop
jump2:
slt $22, $31, $17
mtc0 $31, $14
eret
label2:
bne $1, $2, label3
nop
label4:
bne $5, $1, label5
nop
jump3:
nop
mtc0 $31, $14
eret
label6:
bne $25, $4, label7
nop
jump4:
jr $31
nop
label8:
bne $22, $21, label9
nop
label10:
beq $28, $29, label11
nop
label12:
beq $4, $31, label13
nop
label14:
beq $11, $21, label15
nop
label16:
bne $12, $8, label17
nop
label18:
beq $20, $27, label19
nop
label20:
bne $18, $12, label21
nop
label22:
beq $11, $12, label23
nop
jump5:
nop
mtc0 $31, $14
eret
label24:
bne $23, $25, label25
nop
label26:
beq $19, $16, label27
nop
label28:
beq $4, $27, label29
nop
label30:
bne $13, $14, label31
nop
label32:
bne $19, $18, label33
nop
label34:
bne $14, $22, label35
nop
label36:
bne $5, $5, label37
nop
label38:
bne $31, $29, label39
nop
label40:
bne $24, $24, label41
nop
label42:
beq $8, $13, label43
nop
label44:
beq $23, $23, label45
nop
label46:
beq $17, $17, label47
nop
label48:
beq $28, $23, label49
nop
jump6:
jr $31
nop
jump7:
ori $8, $31, 0x5864 # @    34a4
mtc0 $31, $14
eret
label50:
bne $29, $28, label51
nop
jump8:
mtc0 $31, $14
eret
label52:
beq $24, $11, label53
nop
label54:
bne $12, $10, label55
nop
label56:
beq $19, $5, label57
nop
label58:
beq $19, $13, label59
nop
label60:
beq $26, $7, label61
nop
jump9:
mult $31, $9
mtc0 $31, $14
eret
jump10:
mtc0 $31, $14
eret
label62:
bne $24, $12, label63
nop
label64:
bne $16, $17, label65
nop
label66:
bne $14, $5, label67
nop
jump11:
sb $16, -5670($31) # @    3624
jr $31
nop
label68:
beq $14, $14, label69
nop
label70:
bne $30, $6, label71
nop
jump12:
multu $31, $10
jr $31
nop
jump13:
sw $9, -9832($31) # @    3664
jr $31
nop
jump14:
sw $15, -13936($31) # @    366c
jr $31
nop
label72:
bne $15, $6, label73
nop
label74:
bne $6, $4, label75
nop
label76:
bne $31, $13, label77
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
