module mul5B
(
    input logic [7:0] i,
    output logic [7:0] o
);

    always_comb begin
        o[0] = i[2] ^ i[0];
        o[1] = i[3] ^ i[1] ^ i[0];
        o[2] = i[4] ^ i[2] ^ i[1];
        o[3] = i[5] ^ i[3] ^ i[0];
        o[4] = i[6] ^ i[4] ^ i[1] ^ i[0];
        o[5] = i[7] ^ i[5] ^ i[1];
        o[6] = i[6] ^ i[0];
        o[7] = i[7] ^ i[1];
    end

endmodule
