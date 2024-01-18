`define ALU_add 5'h00
`define ALU_sub 5'h01
`define ALU_or  5'h02
`define ALU_lui 5'h03

`define EXT_Z 2'b00
`define EXT_S 2'b01
`define EXT_LUI 2'b10

`define RD_rd 2'b00
`define RD_rt 2'b01
`define RD_ra 2'b10

`define RS_ALU_c   2'b00
`define RS_DM_RD   2'b01
`define RS_NPC_pc4 2'b10

`define NPC_pc4   2'b00
`define NPC_Imm16 2'b01
`define NPC_Imm26 2'b10
`define NPC_ra    2'b11

`define CMP_beq 3'b000

`define D2D 2'b00
`define E2D 2'b01
`define M2D 2'b10

`define E2E 2'b00
`define M2E 2'b01
`define W2E 2'b10

`define M2M 2'b00
`define W2M 2'b01