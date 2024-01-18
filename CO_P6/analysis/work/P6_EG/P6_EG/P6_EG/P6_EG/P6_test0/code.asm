lui $0, 0x58c5
ori $0, $0, 0x3ad9
lui $1, 0xf2
ori $1, $1, 0x5d30
lui $2, 0xfc7a
ori $2, $2, 0x1089
lui $3, 0x8edb
ori $3, $3, 0x81b3
lui $4, 0x31a1
ori $4, $4, 0x2973
lui $5, 0xd442
ori $5, $5, 0x201b
lui $6, 0x9ecd
ori $6, $6, 0xa4f8
lui $7, 0xfb1
ori $7, $7, 0xf248
lui $8, 0x1889
ori $8, $8, 0x4b3d
lui $9, 0xd403
ori $9, $9, 0x5049
lui $10, 0x4e02
ori $10, $10, 0x5d1b
lui $11, 0xd2f3
ori $11, $11, 0xae15
lui $12, 0x63d1
ori $12, $12, 0x15a4
lui $13, 0xbce2
ori $13, $13, 0x1fc7
lui $14, 0x9cbf
ori $14, $14, 0x1c54
lui $15, 0x2d0a
ori $15, $15, 0xacc
lui $16, 0xe37b
ori $16, $16, 0x3f7e
lui $17, 0x2611
ori $17, $17, 0xb81b
lui $18, 0x3ed5
ori $18, $18, 0x1831
lui $19, 0x37b
ori $19, $19, 0xd099
lui $20, 0x215a
ori $20, $20, 0xf14b
lui $21, 0x6bf1
ori $21, $21, 0x1639
lui $22, 0x19b9
ori $22, $22, 0xe0d7
lui $23, 0x15e8
ori $23, $23, 0x485c
lui $24, 0xc62e
ori $24, $24, 0x916
lui $25, 0x40cb
ori $25, $25, 0xe686
lui $26, 0xfa51
ori $26, $26, 0x73fc
lui $27, 0xceef
ori $27, $27, 0xe980
lui $28, 0xc17d
ori $28, $28, 0x740a
lui $29, 0x1de7
ori $29, $29, 0xb193
lui $30, 0x3d82
ori $30, $30, 0x7d1b
lui $31, 0x74e7
ori $31, $31, 0xdbcc
slt $2, $6, $19
mthi $2
slt $2, $2, $4
nop
mfhi $30
sh $30, -1($2) # @    3114
sb $23, 8193($30) # @    3118
slt $31, $30, $23
jal jump0
nop
mfhi $15
sw $15, 4095($24) # @    312c
and $21, $15, $24
beq $15, $21, label0
nop
label1:
jal jump1
lb $22, -12612($31) # @    3140
jal jump2
lb $30, -4426($31) # @    3148
lw $6, -4392($15) # @    3148
sltu $19, $6, $26
sb $6, -8521($31) # @    3154
multu $6, $31
andi $23, $15, 0xc44c
add $28, $23, $1
mthi $23
bne $23, $26, label2
nop
label3:
mflo $5
nop
sh $5, 4097($24) # @    3178
bne $5, $24, label4
nop
label5:
or $23, $9, $11
sltu $22, $23, $27
nop
bne $23, $11, label6
nop
label7:
add $29, $8, $24
nop
mtlo $29
ori $30, $29, 0x5954 # @    31a4
sltu $30, $16, $29
sw $11, 8192($30) # @    31ac
sw $17, 4096($30) # @    31b0
nop
ori $26, $12, 0xc662 # @    31b8
mthi $26
ori $15, $26, 0x75e4 # @    31c0
bne $26, $15, label8
nop
label9:
lui $11, 0x8eb9
nop
multu $11, $10
multu $11, $2
add $25, $12, $10
multu $25, $11
nop
nop
mflo $22
sltu $2, $22, $22
slt $21, $22, $2
nop
mflo $7
andi $28, $7, 0xa6ed
slt $10, $7, $28
nop
andi $17, $15, 0xf3fa
sub $30, $17, $20
nop
nop
jal jump3
sh $19, -8738($31) # @    3220
mflo $6
divu $6, $31
nop
sltu $17, $6, $8
lh $14, 2($17) # @    3230
divu $14, $23
mthi $14
slt $29, $14, $2
sltu $5, $8, $24
mthi $5
ori $23, $5, 0x1005 # @    324c
beq $5, $23, label10
nop
label11:
add $27, $3, $28
nop
or $30, $27, $1
sh $27, -12836($31) # @    3264
ori $12, $15, 0x5f47 # @    3268
sb $12, 8191($21) # @    326c
sub $6, $12, $21
div $12, $6
mflo $15
sh $15, 8191($15) # @    327c
multu $15, $15
sh $15, 4096($2) # @    3284
sltu $30, $4, $8
mtlo $30
sh $30, -1($10) # @    3290
multu $30, $10
add $4, $2, $24
nop
slt $23, $4, $9
sw $4, 0($17) # @    32a4
mflo $8
mult $8, $30
divu $8, $11
or $16, $8, $7
mfhi $16
and $3, $16, $18
slt $18, $16, $3
bne $16, $18, label12
nop
label13:
mflo $25
mtlo $25
mtlo $25
sw $25, 4095($4) # @    32d8
lh $5, 4096($17) # @    32d8
mtlo $5
sltu $31, $5, $15
sb $5, 8193($31) # @    32e8
lh $5, 8191($21) # @    32e8
sb $10, 4096($5) # @    32f0
nop
bne $5, $6, label14
nop
label15:
jal jump4
mthi $31
andi $26, $19, 0x1405
lh $15, 8191($26) # @    330c
multu $26, $15
bne $26, $20, label16
nop
label17:
lb $13, 1($17) # @    3318
nop
mult $13, $1
add $6, $13, $26
sltu $6, $27, $23
ori $16, $6, 0xe420 # @    3330
mthi $6
beq $6, $24, label18
nop
label19:
add $11, $1, $23
sb $11, -13064($31) # @    3344
sltu $1, $11, $31
beq $11, $1, label20
nop
label21:
jal jump5
sltu $21, $31, $27
mfhi $21
slt $26, $21, $21
sw $14, 4096($21) # @    3364
lb $5, 8192($21) # @    3368
lh $24, 0($25) # @    3368
mtlo $24
mtlo $24
nop
lh $7, -4954($31) # @    3378
slt $22, $7, $11
sh $7, 8194($17) # @    3384
bne $7, $17, label22
nop
label23:
jal jump6
sh $31, 4097($15) # @    3394
sltu $28, $13, $9
lh $24, 8191($28) # @    339c
mtlo $28
bne $28, $9, label24
nop
label25:
lui $10, 0x7c3c
nop
mult $10, $18
slt $5, $10, $22
lb $29, 3($3) # @    33b8
sltu $27, $29, $11
add $26, $29, $27
slt $30, $29, $26
jal jump7
sltu $16, $31, $9
mflo $8
nop
mult $8, $7
sb $8, 8193($5) # @    33e0
jal jump8
multu $31, $6
lh $25, 4095($22) # @    33e8
slt $24, $25, $30
mthi $25
beq $25, $20, label26
nop
label27:
and $28, $21, $6
sh $28, 8194($1) # @    3404
sltu $24, $28, $1
nop
mflo $27
sh $27, 0($13) # @    3414
nop
beq $27, $11, label28
nop
label29:
mfhi $22
mthi $22
sub $1, $22, $18
sw $22, 4096($28) # @    3430
lb $10, 0($24) # @    3430
sh $10, 8192($3) # @    3438
ori $31, $10, 0xd472 # @    343c
sltu $16, $10, $31
ori $26, $16, 0x50b6 # @    3444
slt $6, $26, $5
sw $26, 4096($5) # @    344c
sb $26, 3($13) # @    3450
ori $3, $27, 0xfe9 # @    3454
addi $2, $3, -24195
sh $3, 4121($3) # @    345c
sw $3, 4096($21) # @    3460
mfhi $4
slt $2, $4, $1
nop
addi $31, $4, -15772
jal jump9
sw $5, -5244($31) # @    3478
jal jump10
add $12, $31, $11
mflo $31
lw $29, 8192($31) # @    3488
sh $31, 8192($28) # @    348c
beq $31, $28, label30
nop
label31:
jal jump11
slt $3, $31, $1
mflo $3
mult $3, $4
mult $3, $5
sltu $11, $3, $20
jal jump12
slt $30, $31, $7
sltu $26, $6, $1
lb $30, 4099($26) # @    34bc
sltu $19, $26, $30
mtlo $26
sltu $16, $12, $23
mtlo $16
sw $16, 0($21) # @    34d0
mult $16, $21
lb $1, 4099($19) # @    34d4
nop
or $19, $1, $6
bne $1, $19, label32
nop
label33:
slt $17, $9, $12
sltu $3, $17, $9
sw $17, 4096($1) # @    34f4
beq $17, $1, label34
nop
label35:
sltu $3, $2, $28
slt $8, $3, $9
mult $3, $8
sb $9, 8192($3) # @    350c
lb $18, 0($28) # @    350c
nop
mthi $18
sltu $24, $18, $6
mflo $9
sb $9, 4097($6) # @    3524
mult $9, $6
mtlo $9
mfhi $12
sb $12, 3($23) # @    3534
slt $16, $12, $23
sb $12, 4098($17) # @    353c
mfhi $20
andi $23, $20, 0x38b7
sb $20, 2($8) # @    3548
bne $20, $8, label36
nop
label37:
sltu $7, $15, $6
sltu $16, $7, $12
add $3, $7, $16
bne $7, $3, label38
nop
label39:
jal jump13
lw $14, -13680($31) # @    356c
lui $15, 0x1d6d
ori $30, $15, 0x1544 # @    3574
multu $15, $30
andi $15, $15, 0x68ff
mflo $22
addi $1, $22, 14105
sh $22, 8192($13) # @    3588
multu $22, $13
lh $29, 8194($28) # @    358c
nop
sltu $29, $29, $8
sltu $1, $29, $29
lb $24, 8192($2) # @    359c
slt $7, $24, $17
slt $16, $24, $7
sh $24, 4095($17) # @    35ac
lw $7, 4095($16) # @    35ac
addi $28, $7, -22249
sb $10, 8195($7) # @    35b8
beq $7, $10, label40
nop
label41:
lh $8, 8194($7) # @    35c0
ori $2, $8, 0xdb76 # @    35c8
sb $8, 4098($20) # @    35cc
beq $8, $20, label42
nop
label43:
andi $5, $2, 0xc795
nop
add $5, $5, $16
beq $5, $5, label44
nop
label45:
slt $12, $6, $31
divu $12, $12
or $13, $12, $26
ori $28, $12, 0xbef6 # @    35f8
slt $27, $22, $13
lw $2, -1($27) # @    3600
sb $27, 1($26) # @    3604
slt $16, $27, $26
lui $11, 0x0
slt $3, $11, $23
mtlo $11
sw $11, -13680($31) # @    3618
mfhi $30
sb $12, 8192($30) # @    3620
andi $23, $30, 0x643b
sh $30, 0($21) # @    3628
lb $14, 0($29) # @    3628
nop
slt $6, $14, $8
nop
slt $12, $12, $17
sb $12, 4098($18) # @    3640
nop
bne $12, $5, label46
nop
label47:
lw $23, 0($20) # @    364c
lb $10, 8193($23) # @    3654
sh $23, 0($18) # @    3658
bne $23, $18, label48
nop
label49:
jal jump14
sltu $28, $31, $22
sub $13, $5, $29
mult $13, $22
mthi $13
bne $13, $10, label50
nop
label51:
ori $3, $25, 0xe31f # @    3680
sh $3, 8194($25) # @    3684
sltu $8, $3, $25
sw $3, 0($26) # @    368c
jal jump15
sw $31, 0($30) # @    3694
lh $16, 4098($24) # @    3694
nop
sh $16, 2($14) # @    36a0
sltu $7, $16, $14
lb $30, 0($25) # @    36a4
slt $29, $30, $21
sw $30, 8192($4) # @    36b0
bne $30, $4, label52
nop
label53:
jal jump16
slt $15, $31, $8
addi $6, $16, 20070
mtlo $6
and $29, $6, $7
bne $6, $29, label54
nop
label55:
slt $17, $29, $9
multu $17, $23
sh $17, 4098($12) # @    36e0
sub $29, $17, $12
sltu $13, $10, $9
sltu $28, $13, $29
slt $17, $13, $28
slt $26, $13, $17
mfhi $31
or $12, $31, $7
lw $3, 0($31) # @    3700
nop
slt $3, $14, $15
slt $21, $3, $12
sw $9, 4096($3) # @    3710
bne $3, $9, label56
nop
label57:
lw $18, 8192($12) # @    3718
sh $18, -9837($27) # @    3720
sh $18, 4098($15) # @    3724
beq $18, $15, label58
nop
label59:
ori $20, $20, 0x721a # @    3730
divu $20, $6
multu $20, $15
bne $20, $9, label60
nop
label61:
lw $30, 4096($4) # @    3740
mult $30, $2
add $19, $30, $11
beq $30, $19, label62
nop
label63:
lh $26, 8194($3) # @    3754
sb $26, 8192($11) # @    375c
nop
nop
slt $26, $17, $2
sw $26, 4096($3) # @    376c
or $1, $26, $3
and $10, $26, $1
jal jump17
slt $21, $31, $26
lw $12, 0($4) # @    377c
nop
sltu $12, $12, $22
slt $13, $12, $12
mfhi $5
sb $5, 4096($10) # @    3794
or $15, $5, $10
beq $5, $15, label64
nop
label65:
slt $20, $23, $25
add $19, $20, $11
slt $6, $20, $19
sw $20, 0($2) # @    37b0
mflo $31
mult $31, $3
slt $7, $31, $22
sb $31, 8195($31) # @    37c0
addi $24, $16, 20346
lh $29, -16248($24) # @    37c8
lw $8, -20346($24) # @    37cc
beq $24, $8, label66
nop
label67:
jal jump18
sb $31, 4097($26) # @    37dc
lw $13, 0($22) # @    37dc
sltu $3, $13, $8
sub $4, $13, $3
slt $4, $13, $4
slt $31, $30, $9
slt $1, $31, $2
sw $31, 4096($23) # @    37f8
multu $31, $23
jal jump19
sb $31, 8193($20) # @    3804
sltu $28, $6, $27
slt $4, $28, $19
sh $28, 2($9) # @    3810
bne $28, $9, label68
nop
label69:
jal jump20
lw $9, -6180($31) # @    3820
slt $23, $13, $24
sub $12, $23, $11
slt $7, $23, $12
bne $23, $7, label70
nop
label71:
mfhi $18
mult $18, $22
sltu $21, $18, $26
beq $18, $21, label72
nop
label73:
slt $9, $22, $2
multu $9, $13
sh $18, 0($9) # @    3854
bne $9, $18, label74
nop
label75:
lw $18, 0($16) # @    385c
mult $18, $13
mthi $18
bne $18, $2, label76
nop
label77:
slt $18, $4, $11
slt $16, $18, $3
sw $18, 8191($12) # @    387c
slt $19, $18, $12
andi $9, $18, 0xe953
sb $9, 8192($1) # @    3888
sw $9, 8192($20) # @    388c
sh $9, 8192($6) # @    3890
and $24, $5, $20
addi $29, $24, 14711
addi $15, $24, -14534
bne $24, $15, label78
nop
label79:
lw $15, -6180($31) # @    38a4
sltu $19, $15, $24
sb $15, -10276($31) # @    38b0
addi $12, $15, 19439
ori $15, $17, 0xa485 # @    38b8
slt $13, $15, $23
sb $15, -13930($27) # @    38c0
beq $15, $27, label80
nop
label81:
jal jump21
sh $31, 8192($4) # @    38d0
jal jump22
lb $6, -6363($31) # @    38d8
ori $10, $16, 0x36f8 # @    38dc
mtlo $10
sltu $14, $10, $5
sltu $10, $10, $14
jal jump23
sh $31, 2($9) # @    38f0
mflo $15
sh $15, 4096($11) # @    38f8
sh $15, -10452($29) # @    38fc
sltu $8, $15, $29
andi $10, $31, 0x883e
sh $10, 0($7) # @    3908
sb $10, 8194($18) # @    390c
nop
sltu $11, $9, $10
slt $30, $11, $9
andi $20, $11, 0xf17d
bne $11, $20, label82
nop
label83:
mfhi $1
ori $1, $1, 0x3218 # @    392c
andi $24, $1, 0x7d91
addi $15, $1, -8104
jal jump24
sh $31, 8194($25) # @    393c
ori $3, $23, 0xaf9e # @    3940
multu $3, $5
andi $21, $3, 0x23b1
beq $3, $21, label84
nop
label85:
jal jump25
mult $31, $27
jal jump26
lb $23, -6497($31) # @    3960
jal jump27
sw $31, 8192($30) # @    3968
lw $14, 8192($14) # @    3968
sb $14, 1($5) # @    3970
sltu $25, $14, $5
bne $14, $25, label86
nop
label87:
jal jump28
sw $31, 8192($22) # @    3984
sub $14, $30, $17
multu $14, $12
andi $13, $14, 0x94f6
beq $14, $13, label88
nop
label89:
lui $17, 0x0
sltu $2, $17, $17
nop
or $22, $17, $6
lw $23, 4096($4) # @    39a8
slt $3, $23, $9
andi $15, $23, 0x891c
and $2, $23, $15
lh $18, -10970($1) # @    39b8
div $18, $15
slt $18, $18, $31
bne $18, $18, label90
nop
label91:
slt $29, $18, $31
slt $31, $29, $3
slt $21, $29, $31
and $29, $29, $21
slt $23, $21, $15
sltu $23, $23, $14
sltu $29, $23, $23
sb $23, 8168($15) # @    39ec
jal jump29
sw $31, 8192($22) # @    39f4
andi $22, $19, 0x56a2
sltu $31, $22, $11
multu $22, $31
beq $22, $14, label92
nop
label93:
slt $11, $8, $7
addi $7, $11, 5092
multu $11, $7
addi $29, $11, 11373
sub $2, $9, $23
sltu $9, $2, $4
slt $22, $2, $9
bne $2, $22, label94
nop
label95:
beq $0, $0, end
nop
jump0:
divu $31, $25
sltu $24, $31, $23
jr $31
nop
label0:
beq $15, $21, label1
nop
jump1:
sltu $28, $31, $22
sw $3, -8516($31) # @    3140
jr $31
nop
jump2:
slt $19, $31, $30
multu $31, $19
jr $31
nop
label2:
bne $23, $26, label3
nop
label4:
bne $5, $24, label5
nop
label6:
bne $23, $11, label7
nop
label8:
bne $26, $15, label9
nop
jump3:
sltu $20, $31, $19
mthi $31
jr $31
nop
label10:
beq $5, $23, label11
nop
label12:
bne $16, $18, label13
nop
label14:
bne $5, $6, label15
nop
jump4:
nop
nop
jr $31
nop
label16:
bne $26, $20, label17
nop
label18:
beq $6, $24, label19
nop
label20:
beq $11, $1, label21
nop
jump5:
sh $31, 8194($17) # @    3358
multu $31, $17
jr $31
nop
label22:
bne $7, $17, label23
nop
jump6:
nop
ori $7, $31, 0x89e7 # @    3394
jr $31
nop
label24:
bne $28, $9, label25
nop
jump7:
sh $19, -9170($31) # @    33d0
divu $31, $19
jr $31
nop
jump8:
mthi $31
mthi $31
jr $31
nop
label26:
beq $25, $20, label27
nop
label28:
beq $27, $11, label29
nop
jump9:
slt $8, $31, $5
or $20, $31, $8
jr $31
nop
jump10:
sltu $20, $31, $12
lh $1, -5252($31) # @    3480
jr $31
nop
label30:
beq $31, $28, label31
nop
jump11:
lh $19, -13470($31) # @    349c
div $31, $19
jr $31
nop
jump12:
sw $31, 0($18) # @    34b4
sltu $13, $31, $18
jr $31
nop
label32:
bne $1, $19, label33
nop
label34:
beq $17, $1, label35
nop
label36:
bne $20, $8, label37
nop
label38:
bne $7, $3, label39
nop
jump13:
nop
mult $31, $24
jr $31
nop
label40:
beq $7, $10, label41
nop
label42:
beq $8, $20, label43
nop
label44:
beq $5, $5, label45
nop
label46:
bne $12, $5, label47
nop
label48:
bne $23, $18, label49
nop
jump14:
add $27, $31, $28
sw $31, 4096($8) # @    3668
jr $31
nop
label50:
bne $13, $10, label51
nop
jump15:
slt $15, $31, $30
sh $31, 0($2) # @    3694
jr $31
nop
label52:
bne $30, $4, label53
nop
jump16:
mthi $31
nop
jr $31
nop
label54:
bne $6, $29, label55
nop
label56:
bne $3, $9, label57
nop
label58:
beq $18, $15, label59
nop
label60:
bne $20, $9, label61
nop
label62:
beq $30, $19, label63
nop
jump17:
slt $22, $31, $21
sh $31, 2($22) # @    377c
jr $31
nop
label64:
beq $5, $15, label65
nop
label66:
beq $24, $8, label67
nop
jump18:
mult $31, $26
sb $31, 0($23) # @    37dc
jr $31
nop
jump19:
multu $31, $20
slt $13, $31, $25
jr $31
nop
label68:
bne $28, $9, label69
nop
jump20:
sb $15, -6177($31) # @    3820
sh $31, 4098($22) # @    3820
jr $31
nop
label70:
bne $23, $7, label71
nop
label72:
beq $18, $21, label73
nop
label74:
bne $9, $18, label75
nop
label76:
bne $18, $2, label77
nop
label78:
bne $24, $15, label79
nop
label80:
beq $15, $27, label81
nop
jump21:
sltu $26, $31, $4
mthi $31
jr $31
nop
jump22:
sltu $25, $31, $6
addi $26, $31, -24269
jr $31
nop
jump23:
lw $29, -6388($31) # @    38f0
slt $27, $31, $29
jr $31
nop
label82:
bne $11, $20, label83
nop
jump24:
slt $3, $31, $25
sh $31, 8194($22) # @    393c
jr $31
nop
label84:
beq $3, $21, label85
nop
jump25:
sltu $6, $31, $22
sltu $5, $31, $6
jr $31
nop
jump26:
mult $31, $23
sb $24, -6499($31) # @    3960
jr $31
nop
jump27:
andi $24, $31, 0xa7e5
and $18, $31, $24
jr $31
nop
label86:
bne $14, $25, label87
nop
jump28:
sb $31, -8546($18) # @    3984
slt $9, $31, $18
jr $31
nop
label88:
beq $14, $13, label89
nop
label90:
bne $18, $18, label91
nop
jump29:
nop
lb $12, -10742($31) # @    39f4
jr $31
nop
label92:
beq $22, $14, label93
nop
label94:
bne $2, $22, label95
nop
end:
nop
