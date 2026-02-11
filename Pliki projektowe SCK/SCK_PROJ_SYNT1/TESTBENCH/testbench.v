
module testbench;

    reg signed [5:0] i_arg0, i_arg1;
    reg [1:0] i_oper;
    wire signed [5:0] o_result;
    wire [3:0] o_flag;


    ALU u1 (.i_arg0(i_arg0), .i_arg1(i_arg1), .i_oper(i_oper), 
    .i_imm(0), .i_data(0),
    .o_result(o_result), .o_flag(o_flag));
    

    initial 
    begin

        i_oper = 0;
        i_arg0 = 2;
        i_arg1 = 13;
        #10;
        
        i_oper = 2;
        i_arg0 = 3;
        i_arg1 = 1;
        #10;
        
        i_oper = 0;
        i_arg0 = 17;
        i_arg1 = 18;
        #10;
        
        i_oper = 3;
        i_arg0 = 5;
        i_arg1 = 2;
        #10;
        
        i_oper = 1;
        i_arg0 = 1;
        i_arg1 = 1;
        #10;
        

        $finish;

    end

endmodule
