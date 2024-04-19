`timescale 1ns / 1ps

module hamm_enc(
 input [7:0] IN,
 output [11:0] HAMM_OUT,
 output OUT_PARITY
    );
    reg p1,p2,p3,p4;
    
    always  @ (*)
    begin
    p1 = IN[0] ^ IN[1] ^ IN[3] ^ IN[4] ^ IN [6] ;
    p2 = IN[0] ^ IN[2] ^ IN[3] ^ IN[5] ^ IN[6] ; 
    p3 = IN[1] ^ IN[2] ^ IN[3] ^ IN[7] ; 
    p4 = IN[4] ^ IN[5] ^ IN[6] ^ IN[7] ; 
    end

 assign HAMM_OUT = {IN[7:4], p4, IN[3:1], p3, IN[0], p2, p1};
 
 assign OUT_PARITY = ^HAMM_OUT;
    
endmodule
