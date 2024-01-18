import random

file = open("mips_code.txt", "w")

extremeImmu16 = [0, 1, 2, 3, 65533, 65534, 65535]  # 极限值
sizeEIu16 = 6

size_im = 4096
size_dm = 3072
pc = 0
num_op = 6
jumpid = 0
jump = 0
GRF = []
for i in range(32):
    GRF.append(0)  # 模拟寄存器堆
DM = []
for i in range(3072):
    DM.append(0)


############################ 开始跳转之前通过记录GRF可以跑更多的随机数和极限值 ##########################################
def add(rd, rs, rt):
    print("add $" + str(rd) + ",$" + str(rs) + ",$" + str(rt))
    global pc
    pc = pc + 4
    if jump == 0 and rd != 0:
        GRF[rd] = GRF[rs] + GRF[rt]
    return


def sub(rd, rs, rt):
    print("sub $" + str(rd) + ",$" + str(rs) + ",$" + str(rt))
    global pc
    pc = pc + 4
    if jump == 0 and rd != 0:
        GRF[rd] = GRF[rs] - GRF[rt]
    return


def ori(rt, rs, immo):
    print("ori $" + str(rt) + ",$" + str(rs) + "," + str(immo))
    global pc
    pc = pc + 4
    if jump == 0 and rt != 0:
        GRF[rt] = GRF[rs] | immo
    return


def lui(rt, imml):
    print("lui $" + str(rt) + "," + str(imml))
    global pc
    pc = pc + 4
    if jump == 0 and rt != 0:
        GRF[rt] = imml * 65536
    return


def lw(rt, base):
    global pc
    pc = pc + 4
    if jump == 0:
        # case1
        if GRF[base] > (size_dm - 1) * 4 or GRF[base] < - (size_dm - 1) * 4:
            sub(base, base, base)
            imm = random.randint(0, (size_dm - 1)) * 4
            if rt != 0:
                GRF[rt] = DM[imm // 4]
            print("lw $" + str(rt) + "," + str(imm) + "($" + str(base) + ")")
            return
        # case2
        else:
            while True:
                if GRF[base] > 0:  # case2_1
                    oprand = random.randint(0, 1)
                    type = - (GRF[base] % 4)
                    if oprand == 0:  # 生成负数
                        imm = random.randrange(-(size_dm - 1) * 4 + (4 + type), 0, 4)
                    else:  # 生成小负数和小正数
                        imm = random.randrange(type, 100 * 4, 4)
                else:  # case2_2
                    type = - (GRF[base] % 4)
                    imm = random.randrange(type, (size_dm - 1) * 4, 4)
                if (imm + GRF[base]) % 4 == 0 and 0 < imm + GRF[base] < (size_dm - 1) * 4:
                    if rt != 0:
                        GRF[rt] = DM[(GRF[base] + imm) // 4]
                    print("lw $" + str(rt) + "," + str(imm) + "($" + str(base) + ")")
                    return
    else:
        ori(base, 0, random.randint(1, 6) * 4)
        offset = random.randint(0, 40) * 4
        print("lw $" + str(rt) + "," + str(offset) + "($" + str(base) + ")")
        return


def sw(rt, base):
    global pc
    pc = pc + 4
    if jump == 0:
        # case1
        if GRF[base] > (size_dm - 1) * 4 or GRF[base] < - (size_dm - 1) * 4:
            sub(base, base, base)
            imm = random.randint(0, (size_dm - 1)) * 4
            DM[imm // 4] = GRF[rt]
            print("sw $" + str(rt) + "," + str(imm) + "($" + str(base) + ")")
            return
        # case2
        else:
            while True:
                if GRF[base] > 0:  # case2_1
                    oprand = random.randint(0, 1)
                    type = - (GRF[base] % 4)
                    if oprand == 0:  # 生成负数
                        imm = random.randrange(-(size_dm - 1) * 4 + (4 + type), 0, 4)
                    else:  # 生成小负数和小正数
                        imm = random.randrange(type, 100 * 4, 4)
                else:  # case2_2
                    type = - (GRF[base] % 4)
                    imm = random.randrange(type, (size_dm - 1) * 4, 4)
                if (imm + GRF[base]) % 4 == 0 and 0 < imm + GRF[base] < (size_dm - 1) * 4:
                    DM[(GRF[base] + imm) // 4] = GRF[rt]
                    print("sw $" + str(rt) + "," + str(imm) + "($" + str(base) + ")")
                    return
    else:
        ori(base, 0, random.randint(1, 6) * 4)
        offset = random.randint(0, 40) * 4
        print("sw $" + str(rt) + "," + str(offset) + "($" + str(base) + ")")
        return


def generate(op, rs, rt, rd, imm):
    if op == 0:
        print("nop")
        global pc
        pc = pc + 4
    if op == 1:
        sub(rd, rs, rt)
    if op == 2:
        ori(rt, rs, imm)
    if op == 3:
        lw(rt, rs)
    if op == 4:
        sw(rs, rt)
    if op == 5:
        lui(rt, imm)
    if op == 6:
        add(rd, rs, rt)
    else:
        return
    return


def generate_TextBlock_normal():
    for i in range(0, 50):
        rs = random.randint(0, 31)
        rt = random.randint(0, 31)
        rd = random.randint(0, 31)
        op = random.randint(0, num_op)
        isExtreme = random.randint(0, 3)

        if op == 2 or op == 5:  # ori/lui
            if isExtreme == 0:
                immE = extremeImmu16[random.randint(0, sizeEIu16)]
                generate(op, rs, rt, rd, immE)
            else:
                imm = random.randint(0, (size_dm - 1) * 4)
                generate(op, rs, rt, rd, imm)
        else:
            generate(op, rs, rt, rd, 0)


##########################################################################################

################################### 开始跳转之后 ###############################################

def generate_TextBlock_forcircle(R1, R2, R3, R4):
    for i in range(0, 50):
        while True:
            rs = random.randint(0, 31)
            if rs != R1 and rs != R2 and rs != R3 and rs != R4:
                break
        while True:
            rt = random.randint(0, 31)
            if rt != R1 and rt != R2 and rt != R3 and rt != R4:
                break
        while True:
            rd = random.randint(0, 31)
            if rd != R1 and rd != R2 and rd != R3 and rd != R4:
                break
        op = random.randint(0, num_op)
        isExtreme = random.randint(0, 3)

        if op == 2 or op == 5:  # ori/lui
            if isExtreme == 0:
                immE = extremeImmu16[random.randint(0, sizeEIu16)]
                generate(op, rs, rt, rd, immE)
            else:
                imm = random.randint(0, (size_dm - 1) * 4)
        elif op == 0:
            print("nop")
        else:
            generate(op, rs, rt, rd, 0)


def JumpBlock_type1():
    global jumpid
    sub(31, 31, 31)
    ori(31, 31, 12288)
    ori(31, 31, pc + 8)
    print("labeljal" + str(jumpid) + ":")
    print("jr $ra")
    generate_TextBlock_normal()
    print("jal labeljal" + str(jumpid))
    generate_TextBlock_normal()
    jumpid = jumpid + 1


def JumpBlock_type2():
    global jumpid
    R1 = random.randint(1, 30)
    R2 = random.randint(1, 30)
    R3 = random.randint(1, 30)
    n = random.randint(3, 12)
    sub(R1, R1, R1)
    sub(R2, R2, R2)
    sub(R3, R3, R3)
    ori(R2, R2, n)
    ori(R3, R3, 1)
    print("jal labeljal" + str(jumpid))
    generate_TextBlock_forcircle(R1, R2, R3, 31)
    print("labeljal" + str(jumpid) + ":")
    generate_TextBlock_forcircle(R1, R2, R3, 31)
    add(R1, R1, R3)
    print("beq $" + str(R1) + ",$" + str(R2) + "," + "beqlabel" + str(jumpid))
    print("nop")
    print("jr $ra")
    print("beqlabel" + str(jumpid) + ":")
    jumpid = jumpid + 1


def JumpBlock_type3():
    global jumpid
    R1 = random.randint(1, 31)
    R2 = random.randint(1, 31)
    R3 = random.randint(1, 31)
    sub(R1, R1, R1)
    sub(R2, R2, R2)
    sub(R3, R3, R3)
    n = random.randint(0, 65533)
    ori(R1, R1, n - 1)
    ori(R2, R2, n)
    ori(R3, R3, 1)
    print("beqlabel" + str(jumpid) + ":")
    add(R1, R1, R3)
    generate_TextBlock_forcircle(R1, R2, R3, -1)
    print("beq $" + str(R1) + ",$" + str(R2) + "," + "beqlabel" + str(jumpid))
    generate_TextBlock_forcircle(R1, R2, R3, -1)
    jumpid = jumpid + 1


# main logic
for index in range(0, 32):  # 32
    imm = random.randint(1, 100)
    ori(index, 0, imm)

for i in range(0, 6):
    generate_TextBlock_normal()  # 300

jump = 1  # begin jump

for index in range(0, 32):  # 0 ~ 62
    if GRF[index] < 0 or GRF[index] > (size_dm - 1) * 2:
        sub(index, index, index)
        ori(index, index, random.randint(1, 100))

jumpid = 0

JumpBlock_type1()  # 100
print("nop")
JumpBlock_type2()  # 100
print("nop")
JumpBlock_type3()  # 50
print("nop")
JumpBlock_type2()  # 100
print("nop")
JumpBlock_type3()  # 50