`define ALU_ADD  5'h00
`define ALU_SUB  5'h01
`define ALU_OR   5'h02
`define ALU_LUI  5'h03
`define ALU_AND  5'h04
`define ALU_SLT  5'h05
`define ALU_SLTU 5'h06

`define MD_MTLO  3'b000
`define MD_MTHI  3'b001
`define MD_MULT  3'b010
`define MD_MULTU 3'b011
`define MD_DIV   3'b100
`define MD_DIVU  3'b101

`define MD_LO 1'b0
`define MD_HI 1'b1

`define EXT_Z   2'b00
`define EXT_S   2'b01
`define EXT_LUI 2'b10

`define BE_SW 2'b00
`define BE_SH 2'b01
`define BE_SB 2'b10

`define DP_LW 3'b000
`define DP_LH 3'b001
`define DP_LB 3'b010

`define RD_rd 2'b00
`define RD_rt 2'b01
`define RD_ra 2'b10

`define RS_ALU_C   3'b000
`define RS_DM_RD   3'b001
`define RS_NPC_PC4 3'b010
`define RS_MD      3'b011

`define NPC_pc4   2'b00
`define NPC_Imm16 2'b01
`define NPC_Imm26 2'b10
`define NPC_ra    2'b11

`define CMP_BEQ 3'b000
`define CMP_BNE 3'b001

`define D2D 2'b00
`define E2D 2'b01
`define M2D 2'b10

`define E2E 2'b00
`define M2E 2'b01
`define W2E 2'b10

`define M2M 2'b00
`define W2M 2'b01

`define ADD  6'b10_0000
`define SUB  6'b10_0010
`define AND  6'b10_0100 
`define OR   6'b10_0101
`define SLT  6'b10_1010
`define SLTU 6'b10_1011

`define ORI  6'b00_1101
`define ADDI 6'b00_1000
`define ANDI 6'b00_1100

`define LUI  6'b00_1111

`define LW   6'b10_0011
`define LH   6'b10_0001
`define LB   6'b10_0000

`define SW   6'b10_1011
`define SH   6'b10_1001
`define SB   6'b10_1000

`define MTLO 6'b01_0011
`define MTHI 6'b01_0001
`define MULT 6'b01_1000
`define MULTU 6'b01_1001
`define DIV  6'b01_1010
`define DIVU 6'b01_1011

`define MFLO 6'b01_0010
`define MFHI 6'b01_0000

`define BEQ  6'b00_0100
`define BNE  6'b00_0101

`define JAL  6'b00_0011

`define JR   6'b00_1000

`define NOP  6'b00_0000
