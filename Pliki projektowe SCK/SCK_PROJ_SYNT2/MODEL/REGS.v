module REGS (
    input wire [3:0] i_reg0,
    input wire [3:0] i_reg1,
    input wire [3:0] i_reg2,
    input wire i_clk,
    input wire i_rsn,
    input wire signed [5:0] i_data2,
    output reg signed [5:0] o_data0,
    output reg signed [5:0] o_data1
);

    reg signed [5:0] RRR [1:11]; // Tablica rejestrów
    integer i; // Zmienna pomocnicza do pętli

    always @(posedge i_clk, negedge i_rsn) 
    begin
        if (!i_rsn) begin
            for(i = 1; i <= 11; i = i + 1)
                RRR[i] <= 0;
        end
        else begin
            if(i_reg2 != 0) 
                RRR[i_reg2] <= i_data2;
        end
    end

    always @(*)
    begin
        if(i_reg0 > 0 && i_reg0 <= 11)
            o_data0 = RRR[i_reg0];
        else 
            o_data0 = 0;
        if(i_reg1 > 0 && i_reg1 <= 11)
            o_data1 = RRR[i_reg1];
        else 
            o_data1 = 0;
    end

endmodule

    