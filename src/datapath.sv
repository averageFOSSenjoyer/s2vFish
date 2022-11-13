module datapath
(
    input logic [127:0] block, key,
    input logic Clk, Start, Reset, EnDe,
    output logic [127:0] o,
    output logic busy
);

    logic [127:0] currBlock, currKey;
    logic [4:0] currState; // 0-1 for input whitening, 3-18 for rounds, 19-20 for output whitening
    logic [7:0] rndCnt;
    logic [31:0] k0, k1, s0, s1, a0, b0, a1, b1, a2, b2;

    always_ff @ (posedge Clk) begin
        if (Reset)
            busy <= 1'b0;
        else if (Start && !busy) begin
            // LITTLE ENDIAN CONVERT
            currBlock <= {block[103:96], block[111:104], block[119:112], block[127:120],
                          block[71:64], block[79:72], block[87:80], block[95:88],
                          block[39:32], block[47:40], block[55:48], block[63:56],
                          block[7:0], block[15:8], block[23:16], block[31:24]};
            currKey <= key;
            currState <= 0;
            busy <= 1'b1;
            if (~EnDe)
                rndCnt <= 0;
            else
                rndCnt <= 2;
        end
        else if (currState == 0) begin
            currBlock[127:96] <= currBlock[127:96] ^ k0;
            currBlock[95:64] <= currBlock[95:64] ^ k1;
            if (~EnDe)
                rndCnt <= 1;
            else
                rndCnt <= 3;
        end
        else if (currState == 1) begin
            currBlock[63:32] <= currBlock[63:32] ^ k0;
            currBlock[31:0] <= currBlock[31:0] ^ k1;
            if (~EnDe)
                rndCnt <= 4;
            else
                rndCnt <= 19;
        end
        // cipher rounds
        else if (currState >= 2 && currState <= 17) begin
            currBlock[31:0] <= currBlock[95:64];
            currBlock[63:32] <= currBlock[127:96];
            currBlock[95:64] <= b2;
            currBlock[127:96] <= a2;
            if (~EnDe)
                rndCnt <= rndCnt + 1;
            else
                rndCnt <= rndCnt - 1;
        end
        // final flip
        else if (currState == 18) begin
            currBlock[31:0] <= currBlock[95:64];
            currBlock[63:32] <= currBlock[127:96];
            currBlock[95:64] <= currBlock[31:0];
            currBlock[127:96] <= currBlock[63:32];
            if (~EnDe)
                rndCnt <= 2;
            else
                rndCnt <= 0;
        end
        // output whitening
        else if (currState == 19) begin
            currBlock[127:96] <= currBlock[127:96] ^ k0;
            currBlock[95:64] <= currBlock[95:64] ^ k1;
            rndCnt <= rndCnt + 1;
        end
        else if (currState == 20) begin
            currBlock[63:32] <= currBlock[63:32] ^ k0;
            currBlock[31:0] <= currBlock[31:0] ^ k1;
        end
        // endian convert
        else if (currState == 21) begin
            currBlock <= {currBlock[103:96], currBlock[111:104], currBlock[119:112], currBlock[127:120],
                            currBlock[71:64], currBlock[79:72], currBlock[87:80], currBlock[95:88],
                            currBlock[39:32], currBlock[47:40], currBlock[55:48], currBlock[63:56],
                            currBlock[7:0], currBlock[15:8], currBlock[23:16], currBlock[31:24]};
        end
        else if (currState == 22) begin
            busy = 1'b0;
        end


        if (currState >= 0 && currState <= 21)
            currState <= currState + 1;

    end
	 
    always_comb begin
        // encrypt
        if (~EnDe) begin
            a1 = currBlock[63:32] ^ a0;
            a2 = {a1[0], a1[31:1]};
            b1 = {currBlock[30:0], currBlock[31]};
            b2 = b1 ^ b0;
        end
        else begin
            a1 = {currBlock[62:32], currBlock[63]};
            b1 = currBlock[31:0] ^ b0;
            a2 = a1 ^ a0;
            b2 = {b1[0], b1[31:1]};
        end
		  
        o = currBlock;
    end

    kBox kb0 (.m0(currKey[31:0]), .m1(currKey[63:32]), .m2(currKey[95:64]), .m3(currKey[127:96]), .i(rndCnt), .ao(k0), .bo(k1));    

    sKey sk0 (.m(currKey), .s0(s0), .s1(s1));

    funF ff0 (.a(currBlock[127:96]), .b(currBlock[95:64]), .s0(s0), .s1(s1), .k0(k0), .k1(k1), .ao(a0), .bo(b0));

endmodule