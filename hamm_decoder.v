
`timescale 1ns / 1ps
// ARX-0
module hamm_decoder(
    input [11:0] IN,
    input IN_PARITY,
    output [7:0] out,
    output single_bit_error,
    output double_bit_error,
    output reg c1o,
    output reg c2o,
    output reg c3o,
    output reg c4o
    );
    reg c1,c2,c3,c4;
  reg [11:0] de;  //adjusted here for  truncation
  wire [11:0] decoded_data; //adjusted here for  truncation 
    wire par;
    always @ (*) begin 
    c1 = IN[0] ^ IN[2] ^ IN[4] ^ IN[6] ^ IN[8] ^ IN[10] ;
    c2 = IN[1] ^ IN[2] ^ IN[5] ^ IN[6] ^ IN[9] ^ IN[10]; 
    c3 = IN[3] ^ IN[4] ^ IN[5] ^ IN[6] ^ IN[11]; 
    c4 = IN[7] ^ IN[8] ^ IN[9] ^ IN[10]^ IN[11]; 
    end
    always @ (*) begin 
    case({c4,c3,c2,c1}) 
        4'd1:de = 16'b0000000000000001;
        4'd2:de = 16'b0000000000000010;
        4'd3:de = 16'b0000000000000100;
        4'd4:de = 16'b0000000000001000;
        4'd5:de = 16'b0000000000010000;
        4'd6:de = 16'b0000000000100000;
        4'd8:de = 16'b0000000010000000;
        4'd9:de = 16'b0000000100000000;
        4'd10:de = 16'b00000_01_000_000_000;
        4'd11:de = 16'b00000_10_000_000_000; 
        4'd12:de = 16'b0000100000000000; //parity works only till this ..as input is [11:0].. you probably will need to cut it till here initially thought of a 4 to 16 decoder :)
        4'd13:de = 16'b0001000000000000;
        4'd14:de = 16'b0010000000000000;
        4'd15:de = 16'b0100000000000000; //one hot

    default: de = 16'b0000000000000000; 
    endcase
    end
    always  @(*)begin 
    c1o = c1;
    c2o = c2;
    c3o = c3;
    c4o = c4;
    end
    
    assign  decoded_data = de ^ IN ;
    assign par = ^IN;
    assign single_bit_error = | {c4,c3,c2,c1} ;
    assign double_bit_error = (IN_PARITY == par) & single_bit_error ;  // if 1 b error (calc parity != in_parity) else it will be equal but de will be non zero  
    assign out = {decoded_data[11:8] , decoded_data[6:4],decoded_data[2]};
endmodule
