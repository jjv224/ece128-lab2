`timescale 1ns / 1ps

module one_bit_add(
    input CI,
    input A,
    input B,
    output reg Sum,
    output reg CO
    );
    always@(A, B, CI)
    begin
        case({A,B,CI})
            3'b000: CO = 0;
            3'b001: CO = 0;
            3'b010: CO = 0;
            3'b011: CO = 1;
            3'b100: CO = 0;
            3'b101: CO = 1;
            3'b110: CO = 1;
            3'b111: CO = 1;
       endcase
       case({A,B,CI})
            3'b000: Sum = 0;
            3'b001: Sum = 1;
            3'b010: Sum = 1;
            3'b011: Sum = 0;
            3'b100: Sum = 1;
            3'b101: Sum = 0;
            3'b110: Sum = 0;
            3'b111: Sum = 1;
       endcase
   end
endmodule
