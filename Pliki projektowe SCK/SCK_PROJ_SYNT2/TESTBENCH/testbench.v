`timescale 1ns/1ps


module testbench;
    integer i;
    reg signed [5:0] i_data, i_data2;
    reg [2:0] i_oper;
    wire [3:0] o_flag;
    wire signed [5:0] o_data;
    reg i_clk;
    reg i_rsn, i_imm;
    reg [3:0] i_reg0, i_reg1, i_reg2;

    EXE u1(
        .i_oper(i_oper),
        .i_reg0(i_reg0),
        .i_reg1(i_reg1),
        .i_reg2(i_reg2),
        .i_data(i_data),
        .i_imm(i_imm),
        .i_clk(i_clk),
        .i_rsn(i_rsn),
        .o_flag(o_flag),
        .o_data(o_data),
        .i_data2(o_data)
    );

    initial i_clk = 0;
    always #10 i_clk = ~i_clk; 


    initial begin
        
        i = 0;
        i_rsn =1;
        i_imm = 1'b1;
        i_oper = 3'b0;
        i_reg0 = 6'd0;
        i_reg1 = 0;

        for(i = 1; i <= 11; i = i + 1)
        begin
            i_data = 3;
            i_reg2 = i;
            #100;
        end

        i_reg2 = 0;
        i_imm = 0;

        ///////////

        // Inicjalizacja sygnałów
        i_rsn = 0; // Aktywacja resetu
        i_oper = 0;
        i_reg0 = 0;
        i_reg1 = 0;
        i_reg2 = 0;
        i_data = 0;
        i_data2 = 0;
        i_imm = 0;

        // Reset rejestrów
        #100 i_rsn = 1; // Dezaktywacja resetu

        // Wpisanie liczby 2 do pierwszego rejestru (i_reg2 = 1)
        @(posedge i_clk)
            i_imm = 1;
            i_oper = 3'b000;
            i_reg2 = 1;
            i_data = 2;
        #100;

        // Wpisanie liczby 5 do drugiego rejestru (i_reg2 = 2)
        @(posedge i_clk)
            i_imm = 1;
            i_oper = 3'b000;
            i_reg2 = 4'd2;
            i_data = 6'd5;
        #100;

        // Wykonanie operacji dodawania: suma rejestrów 1 i 2 -> zapis w rejestrze 3
        @(posedge i_clk)
            i_imm = 0;
            i_reg0 = 4'b0001;
            i_reg1 = 4'b0010;
            i_reg2 = 4'd3;
            i_oper = 3'b000;
        #100;

        //Odejmowanie
        @(posedge i_clk)
            i_imm = 0;
            i_reg0 = 4'b0010;
            i_reg1 = 4'b0011;
            i_reg2 = 4'd4;
            i_oper = 3'b001;
        #100;
        
        //Przesunięcie bitowe
        @(posedge i_clk)
            i_imm = 0;
            i_reg0 = 4'd2;
            i_reg1 = 4'd1;
            i_reg2 = 4'd5;
            i_oper = 3'b010;
        #100;

        //Przesunięcie bitowe w drugą
        @(posedge i_clk)
            i_imm = 0;
            i_reg0 = 4'd5;
            i_reg1 = 4'd4;
            i_reg2 = 4'd6;
            i_oper = 3'b010;
        #100;

        //AND
        @(posedge i_clk)
            i_imm = 0;
            i_reg0 = 4'd5;
            i_reg1 = 4'd3;
            i_reg2 = 4'd7;
            i_oper = 3'b011;
        #100;

        //OR
        @(posedge i_clk)
            i_imm = 0;
            i_reg0 = 4'd5;
            i_reg1 = 4'd1;
            i_reg2 = 4'd8;
            i_oper = 3'b100;
        #100;

        //Iloczyn bitowy
        @(posedge i_clk)
            i_imm = 0;
            i_reg0 = 4'd7;
            i_reg1 = 4'd8;
            i_reg2 = 4'd9;
            i_oper = 3'b101;
        #100;

         // Zakończenie symulacji po ostatnim teście
        #100 $finish;
    end


endmodule