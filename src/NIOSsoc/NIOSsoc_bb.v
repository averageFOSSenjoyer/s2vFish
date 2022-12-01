
module NIOSsoc (
	block0_export,
	block1_export,
	block2_export,
	block3_export,
	busy_export,
	clk_clk,
	ende_export,
	key0_export,
	key1_export,
	key2_export,
	key3_export,
	out0_export,
	out1_export,
	out2_export,
	out3_export,
	reset_reset_n,
	reset_1_export,
	sdram_clk_clk,
	sdram_wire_addr,
	sdram_wire_ba,
	sdram_wire_cas_n,
	sdram_wire_cke,
	sdram_wire_cs_n,
	sdram_wire_dq,
	sdram_wire_dqm,
	sdram_wire_ras_n,
	sdram_wire_we_n,
	start_export,
	addr_export);	

	output	[31:0]	block0_export;
	output	[31:0]	block1_export;
	output	[31:0]	block2_export;
	output	[31:0]	block3_export;
	input		busy_export;
	input		clk_clk;
	output		ende_export;
	output	[31:0]	key0_export;
	output	[31:0]	key1_export;
	output	[31:0]	key2_export;
	output	[31:0]	key3_export;
	input	[31:0]	out0_export;
	input	[31:0]	out1_export;
	input	[31:0]	out2_export;
	input	[31:0]	out3_export;
	input		reset_reset_n;
	output		reset_1_export;
	output		sdram_clk_clk;
	output	[12:0]	sdram_wire_addr;
	output	[1:0]	sdram_wire_ba;
	output		sdram_wire_cas_n;
	output		sdram_wire_cke;
	output		sdram_wire_cs_n;
	inout	[15:0]	sdram_wire_dq;
	output	[1:0]	sdram_wire_dqm;
	output		sdram_wire_ras_n;
	output		sdram_wire_we_n;
	output		start_export;
	output	[7:0]	addr_export;
endmodule
