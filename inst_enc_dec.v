module inst_enc_dec(
	IN,
	single_bit_ERROR,
	two_bit_ERROR,
	C1,
	c2,
	c3,
	c4,
	OUT
);


input wire	[7:0] IN;
output wire	single_bit_ERROR;
output wire	two_bit_ERROR;
output wire	C1;
output wire	c2;
output wire	c3;
output wire	c4;
output wire	[7:0] OUT;

  wire	WIRE_0;
wire	[11:0] WIRE_1;





hamm_decoder	b2v_inst(
	.IN_PARITY(WIRE_0),
	.IN(WIRE_1),
	.single_bit_error(single_bit_ERROR),
	.double_bit_error(two_bit_ERROR),
	.c1o(C1),
	.c2o(c2),
	.c3o(c3),
	.c4o(c4),
	.out(OUT));


hamm_enc	b2v_inst1(
	.IN(IN),
	.OUT_PARITY(WIRE_0),
	.HAMM_OUT(WIRE_1));


endmodule
