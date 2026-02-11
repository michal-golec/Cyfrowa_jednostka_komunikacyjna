module ALU (
    input signed [5:0] i_arg0,      // Pierwszy argument (ze znakiem)
    input signed [5:0] i_arg1,      // Drugi argument (ze znakiem)
    input [2:0] i_oper,             // Kod operacji (bez znaku)
    input [5:0] i_data,
    input i_imm,

    output reg signed [5:0] o_result, // Wynik operacji (ze znakiem)
    output reg [3:0] o_flag         // Flagi: [Positive, Zero, Negative, Overflow]
);
    reg signed [5:0] arg1;

    always @(*) begin
        // Domyślne wartości
        o_result = 6'b000000;

        if(i_imm == 1)
        begin
            arg1 = i_data;
        end

        else
        begin
            arg1 = i_arg1;
        end


        case (i_oper)
            3'b000: o_result = i_arg0 + arg1;       // Dodawania
            3'b001: o_result = i_arg0 - arg1;       // Odejmowanie
            3'b010: begin
                if (arg1 > 0)
                    o_result = i_arg0 << arg1;     // Przesunięcie bitowe
                else if (arg1 < 0)
                    o_result = i_arg0 >>> -arg1;
                else
                    o_result = i_arg0;   
            end          
            3'b011: o_result = i_arg0 & arg1;  // Iloczyn bitowy (AND)
            3'b100: o_result = i_arg0 | arg1;  // Suma bitowa (OR)
            3'b101: o_result = i_arg0 ^ arg1;  // Suma wyłączona (XOR)
            default: o_result = 0;          // Domyślnie 0
        endcase

        o_flag=4'b0000;
    if (o_result < 0) 
            o_flag[0] = 1;
    if (o_result > 0) 
            o_flag[1] = 1;
    if (o_result == 0) 
            o_flag[2] = 1;

    if (i_oper==3'b000)
        if ((i_arg0 > 0 && arg1 > 0 && o_result < 0) || (i_arg0 < 0 && arg1 < 0 && o_result > 0)) 
            o_flag[3] = 1; //overflow w dodawaniu występuje gdy a i b są dodatnie a suma ujemna,lub na odwrót

    if (i_oper==3'b001)
        if ((i_arg0 > 0 && arg1 < 0 && o_result < 0) || (i_arg0 < 0 && arg1 > 0 && o_result > 0)) 
            o_flag[3] = 1; //overflow w odejmowaniu występuje gdy a jest większe od zera a pozostałe są mniejsze, lub na odwrót


    end
endmodule
