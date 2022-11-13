module testbench();

	timeunit 10ns;
	timeprecision 1ns;
	
	logic Clk;
    integer error = 0;
	
	always begin : CLOCK_GENERATION
		#1 Clk = ~Clk;
	end
	initial begin: CLOCK_INITIALIZATION
		Clk = 0;
	end

    logic [127:0] block, key;
    logic Start, Reset, EnDe;
    logic [127:0] o;
    logic busy;

    datapath d0 (.*);
    logic[31:0] s0, s1;
    assign s0 = d0.s0;
    assign s1 = d0.s1;
    logic [31:0] k0, k1;
    assign k0 = d0.k0;
    assign k1 = d0.k1;
    
    // funF OUT
    logic [31:0] a0, b0;
    assign a0 = d0.a0;
    assign b0 = d0.b0;

    logic [31:0] a1, b1, a2, b2;
    assign a1 = d0.a1;
    assign a2 = d0.a2;
     assign b1 = d0.b1;
    assign b2 = d0.b2;

    // // POST MDS
    // logic [31:0] gOut0, gOut1;
    // assign gOut0 = d0.kb0.gOut0;
    // assign gOut1 = d0.kb0.gOut1;

    // // PRE MDS
    // logic [31:0] sBoxOut0, sBoxOut1;
    // assign sBoxOut0 = d0.kb0.g0.sBoxOut;
    // assign sBoxOut1 = d0.kb0.g1.sBoxOut;

    // logic [7:0] a3;
    // assign a3 = d0.kb0.g0.sb0.sb0.a3;
    // logic [7:0] a2;
    // assign a2 = d0.kb0.g0.sb0.sb0.a2;
    // logic [7:0] a2;
    // assign a2 = d0.kb0.g0.sb0.sb0.q0.a2;
    // logic [7:0] a1;
    // assign a1 = d0.kb0.g0.sb0.sb0.q0.a1;
    // logic [7:0] i;
    // assign i = d0.kb0.g0.sb0.sb0.i;

    logic [4:0] currState;
    assign currState = d0.currState;

    initial begin: TEST
        block = 0;
        key = 0;
        Reset = 0;
        Start = 0;
        EnDe = 0;
    
    #2  Reset = 1;
    #2  Reset = 0;
    
    #2  Start = 1;
    #2  Start = 0;

    #60 Reset = 1;
    #2  Reset = 0;
        block = 128'h9F589F5CF6122C32B6BFEC2F2AE8C35A;
        EnDe = 1;

    #2  Start = 1;
    #2  Start = 0;

    #60 Reset = 1;
    #2  Reset = 0;
        block = 128'he5fa3c00addc12cc3e04c06358754a34;
        EnDe = 0;

    #2  Start = 1;
    #2  Start = 0;

    #60 Reset = 1;
    #2  Reset = 0;
        block = 128'hf8514fcb1e3a89e79cbf259601e840ec;
        EnDe = 1;

    #2  Start = 1;
    #2  Start = 0;

    #60 Reset = 1;
        key = 128'h00000000000000000000000000000001;
    #2  Reset = 0;
        block = 0;
        EnDe = 0;

    #2  Start = 1;
    #2  Start = 0;
	end

    // logic [7:0] i, o;
    // qBox q0 (.*);
    // logic [3:0] a0, b0, a1, b1, a2, b2, a3, b3;
    // assign a0 = q0.a0;
    // assign b0 = q0.b0;
    // assign a1 = q0.a1;
    // assign b1 = q0.b1;
    // assign a2 = q0.a2;
    // assign b2 = q0.b2;
    // assign a3 = q0.a3;
    // assign b3 = q0.b3;

    // initial begin: TEST
    //     i = 8'h3F;
    // end

    // logic [31:0] m0, m1, m2, m3;
    // logic [7:0] i;
    // logic [31:0] ao, bo;
    // kBox kb0 (.*);
    // logic [31:0] o0, o1;
    // assign o0 = kb0.g0.sBoxOut;
    // assign o1 = kb0.g1.sBoxOut;
    // logic [31:0] mds0, mds1;
    // assign mds0 = kb0.gOut0;
    // assign mds1 = kb0.gOut1;

    // initial begin: TEST
    //     m0 = 0;
    //     m1 = 0;
    //     m2 = 0;
    //     m3 = 0;
    //     i = 0;
    // end

    // logic [3:0] i, o;
    // tBox #(.q(1), .t(3)) tb0 (.*);

    // initial begin: TEST
    //     i = 4'hE;
    // end

    // logic [7:0] in_5b, out_5b;
    // test m5b0 (.*);

    // initial begin: TEST
    //     in_5b = 8'h3D;

    // #2  in_5b = 8'h1F;

    // #2  in_5b = 8'hDE;

    // end

    // logic [31:0] i, s0, s1;
    // logic [31:0] o;

    // sBox sb0 (.*);

    // initial begin: TEST
    //     i = 0;
    //     s0 = 0;
    //     s1 = 0;
    // end

endmodule