module CORE (i_inst, i_valid, i_clk, i_rsn, o_ready);

    input wire [20:0] i_inst;
    input wire i_valid, i_clk, i_rsn;
    reg [20:0] inst_reg;
    reg signed [5:0] results_data;
    reg signed [3:0] results_flag, results_reg;

    output wire o_ready;

    wire signed [5:0] o_data;
    wire [3:0] flag;
    wire [3:0] reg0, reg1, reg2;

    always @(posedge i_clk) begin
        if (i_valid == 1)
            inst_reg = i_inst;
        else
            inst_reg = 0;

        results_data <= o_data;
        results_flag <= flag;
        results_reg <= reg2;

    end

endmodule