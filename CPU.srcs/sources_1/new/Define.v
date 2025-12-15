`define WIDTH 32
`define BYTE_WIDTH 4
`define ADDR_WIDTH 12

`define EMPTY 32'b0
`define WORD_EMPTY 32'b0
`define HALFWORD_EMPTY  16'b0
`define BYTE_EMPTY 8'b0
`define HALFWORD_WIDTH 16

`define ALU_OP_WIDTH 6
`define ALU_SEL_WIDTH 6
`define ALU_OP_BEGIN 31
`define ALU_SEL_BEGIN 5
`define IMMEDIATE_BEGIN 15
`define IMMEDIATE_WIDTH 16
`define INS_BEGIN 25
`define INS_WIDTH 26
`define STALL_WIDTH 5

`define PAD_WIDTH 4
`define PAD_U8 4'd0
`define PAD_U16 4'd1
`define PAD_U32 4'd2
`define PAD_S8 4'd3
`define PAD_S16 4'd4
`define PAD_S32 4'd5
`define PAD_INS 4'd6
`define PAD_OFFSET 4'd7

`define REG_RS_BEGIN 25
`define REG_RT_BEGIN 20
`define REG_RD_BEGIN 15

`define OP_NON 6'b000000
`define OP_ORI 6'b001101
`define OP_ANDI 6'b001100
`define OP_XORI 6'b001110
`define OP_ADDI 6'b001000
`define OP_MUL 6'b011100
`define OP_JAL 6'b000011
`define OP_BEQ 6'b000100
`define OP_HLT 6'b000001
`define OP_SB 6'b101000
`define OP_SH 6'b101001
`define OP_SW 6'b101011
`define OP_LW 6'b100011
`define OP_LHU 6'b100101
`define OP_LH 6'b100001
`define OP_LBU 6'b100100
`define OP_LB 6'b100000
`define OP_OUT 6'b110001

`define SEL_AND 6'b100100
`define SEL_OR  6'b100101
`define SEL_XOR 6'b100110
`define SEL_NOT 6'b100111
`define SEL_ADD 6'b100000
`define SEL_SUB 6'b100010
`define SEL_DIV 6'b011010
`define SEL_SLT 6'b101010
`define SEL_MFHI 6'b010000
`define SEL_MFLO 6'b010010
`define SEL_MTHI 6'b010001
`define SEL_MTLO 6'b010011
`define SEL_MOVZ 6'b001010
`define SEL_JR 6'b001000

`define STACK_TOP 32'd2044
`define REG_WIDTH 5
`define REG_SIZE 12
`define RET 5'd11
`define RSP 5'd1
`define RFP 5'd2

`define DIV_FREE 2'b00
`define DIV_WORK 2'b01
`define DIV_END 2'b10
`define DIV_ZERO 2'b11

`define TYPE_WIDTH 2
`define WORD 2'b00
`define HALFWORD 2'b01
`define BYTE 2'b10

`define STD_OUT_WIDTH 11