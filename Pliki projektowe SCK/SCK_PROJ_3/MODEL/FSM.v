/*module FSM(i_valid1, o_ready1, i_clk, i_inst, inst_reg, o_reg0, o_reg1)

    input wire i_valid1, i_clk;
    input wire [20:0] i_inst, inst_reg;
    reg Q, Q_next;
    output reg signed [5:0] o_reg0, o_reg1;

    output wire o_ready1;

    always


endmodule

*/

module fsm(enable_reg_save, i_valid1, o_ready1, i_clk, instr_reg, i_instr, o_reg0, o_reg1);
//i_valid1 - poprawne dane z zewnątrz
//o_ready1 - poprawne dane wystawiane na zewnątrz
//enable reg save - sygnał do zewnętrznego rejestru powodujący wpisanie do niego danych z wejścia
//trzeba dodać FLAGI do wejścia(do instrukcji warunkowych, które muszą być zaimplementowane)

//trzeba dodać też wejście i_instr oraz wejście z i_instr_reg w celu sprawdzenia konfliku danych

//dodaję wejście instr_reg i i_instr
input wire [24:0] instr_reg, i_instr;
reg [2:0] Q, Q_next;
input wire i_valid1;
output reg o_ready1;
input wire i_clk;

output reg signed [8:0] o_reg0, o_reg1;
reg signed [24:0] prev_instr;

always @(*) begin
    o_ready1 <= 1;
    
    case (Q)
        1: begin
            if (i_valid1 == 0) begin
                Q_next = 1;
                o_ready1 <= 1;
            end
            
            else begin
                Q_next = 2;
            end

        end

        2: begin
            Q_next = 3;
            o_ready1 <= 0;
            enable_reg_save <=0;
        end

        3: begin
            Q_next = 4;
            o_ready1 <= 0;
            enable_reg_save <=0;
        end

        4: begin
            Q_next = 5;
            o_ready1 <= 0;
            enable_reg_save <=0;
        end

        5: begin
            if (i_valid1 == 1) begin
                Q_next = 1;
            end
            
            else
                Q_next = 1;
                o_ready1 <= 1;
        end
        
        default: begin
        Q_next = 1;
        o_ready1 <= 1;
        end
    endcase

o_reg0 = instr_reg[24:21];
o_reg1 = instr_reg[20:17];
end

always @(posedge i_clk)
begin
Q = Q_next;
prev_instr = i_instr;
end
endmodule