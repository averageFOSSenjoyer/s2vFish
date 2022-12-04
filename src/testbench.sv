module testbench();

	timeunit 10ns;
	timeprecision 1ns;
	
	logic Clk;
	
	always begin : CLOCK_GENERATION
		#1 Clk = ~Clk;
	end
	initial begin: CLOCK_INITIALIZATION
		Clk = 0;
	end

    integer errorCnt = 0;

    logic [127:0] block, key;
    logic Start, Reset, EnDe;
    logic [127:0] o;
	 logic [7:0] addr;
    logic busy;

    datapath d0 (.*);

    logic [127:0] savedBlock;
    logic [127:0] savedKey;

    initial begin: TEST
        Reset = 0;
        Start = 0;

    #2  Reset = 1;
    #2  Reset = 0;

        for (int i = 0; i < 100; i++) begin
                EnDe = 0;
                savedBlock = {$urandom(), $urandom(), $urandom(), $urandom()};
                savedKey = {$urandom(), $urandom(), $urandom(), $urandom()};
					 
				$display("/**********************************************/ ");
				$display("[Round #] %d ", i + 1);
				$display("[Block] %h ", savedBlock);
				$display("[Key] %h ", savedKey);
					 
                block = savedBlock;
                key = savedKey;                
            
            #2  Start = 1;
            #2  Start = 0;
                block = 128'hx;
                key = 128'hx;
					 addr = 8'h0;

            #45 block = o;
                EnDe = 1;
                key = savedKey;
					 
				$display("[Encoded block] %h", block);
					
            #2  Start = 1;
            #2  Start = 0;
                block = 128'hx;
                key = 128'hx;

            #45 if (o !== savedBlock)
                    errorCnt++;
						  
				$display("[Decoded block] %h", o);
        end
	end
endmodule