# int main() {
#     int n;
#     scanf("%d", &n);
#     int array[100] = {0};
#     array[0] = 1;
#     int pos = 0;
#     for(int i = 2; i <= n; i++) {
#         // mul;
#         int t = 0;
#         for(int j = 0; j <= pos; j++) {
#             t = array[j] * i + t;
#             array[j] = t % 10;
#             t = t/10;
#             if(j == pos && t != 0) {
#                 pos++;
#             }
#         }
#     }
    
#     for(int i = pos; i >= 0; i--) {
#         printf("%d", array[i]);
#     }
# }

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

.macro done
li $v0, 10
syscall
.end_macro

.macro cal_pos(%des, %i)
sll %des, %i, 2
.end_macro

.data:
    A: .word 0:1000

.text:
# s0 = n
scanInt($s0)
li $t0, 1
sw $t0, A($0) # A[0] = 1;

# s1 = pos
li $s1, 0

# s2 = 10
li $s2, 10

# t0 = i
li $t0, 2
L1:
    bgt $t0, $s0, L1end
    # t1 = j, t2 = tmp
    li $t1, 0
    li $t2, 0
    L2:
        bgt $t1, $s1, L2end
        # t3 = addr
        cal_pos($t3, $t1)
        # t3 = A[j]
        lw $t3, A($t3)
        # t2 = A[j] * i + tmp
        mult $t3, $t0
        mflo $t3
        add $t2, $t2, $t3
        div $t2, $s2
        # t3 = t % 10, t2 = t = t/10
        mfhi $t3
        mflo $t2
        # t4 = addr
        cal_pos($t4, $t1)
        sw $t3, A($t4)
        # if pos == j && t !=0
        bne $t1, $s1, else
        beqz $t2, else
        addi $s1, $s1, 1
        else:
        addi $t1, $t1, 1
        j L2
    L2end:
    addi $t0, $t0, 1
    j L1
L1end:

L3:
    bltz $s1, L3end
    cal_pos($t0, $s1)
    lw $t0, A($t0)
    printInt($t0)
    addi $s1, $s1, -1
    j L3
    L3end:
done
