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
            currBlock <= block;
            currKey <= key;
            currState <= 0;
            busy <= 1'b1;
            rndCnt <= 0;
        end
        // input whitening
        else if (currState == 0) begin
            currBlock[127:96] <= currBlock[127:96] ^ k0;
            currBlock[95:64] <= currBlock[95:64] ^ k1;
            rndCnt <= 1;
            currState <= currState + 1;
        end
        else if (currState == 1) begin
            currBlock[63:32] <= currBlock[63:32] ^ k0;
            currBlock[31:0] <= currBlock[31:0] ^ k1;
            rndCnt <= 4;
            currState <= currState + 1;
        end
        else if (currState == 2) begin
            rndCnt <= 4;
            currState <= currState + 1;
            currBlock[127:96] <= currBlock[63:32];
            currBlock[95:64] <= currBlock[31:0];
            currBlock[63:32] <= currBlock[127:96];
            currBlock[31:0] <= currBlock[95:64];
        end
        // cipher rounds
        else if (currState >= 3 && currState <= 25) begin
            rndCnt <= rndCnt + 1;
            currState <= currState + 1;
            currBlock[31:0] <= currBlock[127:96];
            currBlock[63:32] <= currBlock[95:64];
            currBlock[95:64] <= b2;
            currBlock[127:96] <= a2;
        end

    end

    always_comb begin
        // encrypt
        if (~EnDe) begin
            a1 = currBlock[63:32] ^ a0;
            a2 = {a0[0], a0[31:1]};
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