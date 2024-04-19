//////////////////////////////////////////////////////////////////
//•	Check bits for the received data 11100100. 
//////////////////////////////////////////////////////////////////

module inst_enc_dec_tb;
 

 
    reg [7:0] IN;

    wire single_bit_ERROR;
    wire two_bit_ERROR;
    wire C1;
    wire c2;
    wire c3;
    wire c4;
    wire [7:0] OUT;
    
 inst_enc_dec uut (
        .IN(IN),
.single_bit_ERROR(single_bit_ERROR),
        .two_bit_ERROR(two_bit_ERROR),
        .C1(C1),
      .c2(c2),
        .c3(c3),
     .c4(c4),
        .OUT(OUT)
    );
    
    initial begin
        
        IN = 8'b11100100;
        $display("Input IN: %b", IN);
        
   
        #10;
       
        $display("c1: %b, c2: %b, c3: %b, c4: %b", C1, c2, c3, c4);

        $finish;
    end
    
endmodule
