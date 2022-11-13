`include "funMul.sv"

module mds
(
    input logic [31:0] i,
    output logic [31:0] o
);

    always_comb begin
        o[7:0] = i[7:0] ^ mulEF(i[15:8]) ^ mul5B(i[23:16]) ^ mul5B(i[31:24]);
        o[15:8] = mul5B(i[7:0]) ^ mulEF(i[15:8]) ^ mulEF(i[23:16]) ^ i[31:24];
        o[23:16] = mulEF(i[7:0]) ^ mul5B(i[15:8]) ^ i[23:16] ^ mulEF(i[31:24]);
        o[31:24] = mulEF(i[7:0]) ^ i[15:8] ^ mulEF(i[23:16]) ^ mul5B(i[31:24]);
    end

endmodule