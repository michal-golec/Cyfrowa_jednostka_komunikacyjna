module EXE (i_oper, i_reg0, i_reg1, i_reg2, i_data2, i_data, i_imm, i_clk, i_rsn, o_flag, o_data);

    input wire [2:0] i_oper;
    input wire [3:0] i_reg0, i_reg1, i_reg2;
    input wire signed [5:0] i_data, i_data2;
    input wire i_imm;
    input wire i_clk;
    input wire i_rsn;

    output signed [5:0] o_data;
    output [3:0] o_flag;

    wire [5:0] data0;
    wire [5:0] data1;

    ALU u1 (.i_arg0(data0),
                .i_arg1(data1),
                .i_oper(i_oper),
                .i_data(i_data),
                .i_imm(i_imm),
                .o_result(o_data),
                .o_flag(o_flag));

    REGS u2 (.i_reg0(i_reg0),
                .i_reg1(i_reg1),
                .i_reg2(i_reg2),
                .i_data2(i_data2),
                .i_clk(i_clk),
                .i_rsn(i_rsn),
                .o_data0(data0),
                .o_data1(data1));

endmodule