/////////////////////////////////////////////////////////////////
Test Benc for :- 
Solving for parity bits for actual data 110_00_100 
/////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module tb_hamm_enc;

 
  parameter DATA_WIDTH = 8;

  
  reg [DATA_WIDTH-1:0] IN;
  reg clk;

  wire [11:0] HAMM_OUT;
  wire OUT_PARITY;

  hamm_enc hamm_enc_inst (
    .IN(IN),
  .HAMM_OUT(HAMM_OUT),
    .OUT_PARITY(OUT_PARITY)
  );

 
  always #5 clk = ~clk;

  initial begin
   
  IN = 8'b11000100; // 110_00_100
  clk = 0;
      
    #10;    
    $display("Input data: %b", IN);
    
    #5;
    
    $display("Parity bits (P1 P2 P3 P4): %b", {HAMM_OUT[0], HAMM_OUT[1], HAMM_OUT[3], HAMM_OUT[7]});
    $display("Output parity: %b", OUT_PARITY);

   
    $finish;
  end

endmodule
