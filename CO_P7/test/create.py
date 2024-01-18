count = ((0x000_4180 - 0x0000_3000) >> 2) + 1
code_list = []
handel_list = []
with open("code.txt", "r") as file:
    str = file.readline()
    code_list.append(str)
    count = count - 1
    while str is not None and str != "":
        str = file.readline()
        code_list.append(str)
        count = count - 1

with open("handle.txt", "r") as file:
    str = file.readline()
    handel_list.append(str)
    while str is not None and str != "":
        str = file.readline()
        handel_list.append(str)

with open("code.txt", "w") as file:
    for i in range(len(code_list)):
        file.write(code_list[i])
    for i in range(count):
        file.write("00000000\n")
    for i in range(len(handel_list)):
        file.write(handel_list[i])
    