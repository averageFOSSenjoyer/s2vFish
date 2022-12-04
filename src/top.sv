module top(  	 	  
    input	      MAX10_CLK1_50, 
    output logic [12:0] DRAM_ADDR,
    output logic [1:0]  DRAM_BA, 
    inout logic [15:0] DRAM_DQ,
    output logic DRAM_CAS_N, DRAM_CKE, DRAM_CS_N, DRAM_LDQM, DRAM_UDQM, DRAM_RAS_N, DRAM_WE_N, DRAM_CLK
);

    logic [127:0] block, key, o, out;
	 logic [31:0] block0_export, block1_export, block2_export, block3_export, key0_export, key1_export, key2_export, key3_export;
    logic Start, EnDe, Reset, busy;
	 logic [7:0] addr;

    assign block = {block0_export, block1_export, block2_export, block3_export};
    assign key = {key0_export, key1_export, key2_export, key3_export};
	
    NIOSsoc u_NIOSsoc (
        .clk_clk             (MAX10_CLK1_50),
        .reset_reset_n       (1'b1),
        .block0_export       (block0_export),
        .block1_export       (block1_export),
        .block2_export       (block2_export),
        .block3_export       (block3_export),
        .key0_export         (key0_export),
        .key1_export         (key1_export),
        .key2_export         (key2_export),
        .key3_export         (key3_export),
        .out0_export         (o[127:96]),
        .out1_export         (o[95:64]),
        .out2_export         (o[63:32]),
        .out3_export         (o[31:0]),
        .start_export        (Start),
        .ende_export         (EnDe),
        .reset_1_export      (Reset),
        .busy_export         (busy),
		  .addr_export			  (addr),
        .sdram_clk_clk(DRAM_CLK),
        .sdram_wire_addr(DRAM_ADDR),
        .sdram_wire_ba(DRAM_BA),
        .sdram_wire_cas_n(DRAM_CAS_N),
        .sdram_wire_cke(DRAM_CKE),
        .sdram_wire_cs_n(DRAM_CS_N),
        .sdram_wire_dq(DRAM_DQ),
        .sdram_wire_dqm({DRAM_UDQM,DRAM_LDQM}),
        .sdram_wire_ras_n(DRAM_RAS_N),
        .sdram_wire_we_n(DRAM_WE_N)
    );

    datapath u_datapath (.block, .key, .Clk(MAX10_CLK1_50), .Start(Start), .Reset(Reset), .EnDe, .o(out), .busy);

	 ram2 o_ram (.data(out), .wraddress(addr), .wren(~busy), .rdaddress(addr), .clock(Clk), .q(o));
endmodule