`timescale 1ns / 1ps

module one_bit_add_tb();
    reg A, B, CI;
    wire CO, Sum;
    one_bit_add uut(.A(A),.B(B),.CI(CI),.CO(CO),.Sum(Sum));
    
    initial begin
        A= 0; B = 0; CI = 0;
        #10;
        A= 0; B = 0; CI = 1;
        #10;
        A= 0; B = 1; CI = 0;
        #10;
        A= 0; B = 1; CI = 1;
        #10;
        A= 1; B = 0; CI = 0;
        #10;
        A= 1; B = 0; CI = 1;
        #10;
        A= 1; B = 1; CI = 0;
        #10;
        A= 1; B = 1; CI = 1;
        #10;
    end
endmodule
