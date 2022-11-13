`include "funMul.sv"

module sKey
(
    input logic [127:0] m,
    output logic [31:0] s0, s1
);

    always_comb begin
        s0[7:0]   = m[7:0] ^ mulA4(m[15:8]) ^ mul55(m[23:16]) ^ mul87(m[31:24]) ^ mul5A(m[39:32]) ^ mul58(m[47:40]) ^ mulDB(m[55:48]) ^ mul9E(m[63:56]);
        s0[15:8]  = mulA4(m[7:0]) ^ mul56(m[15:8]) ^ mul82(m[23:16]) ^ mulF3(m[31:24]) ^ mul1E(m[39:32]) ^ mulC6(m[47:40]) ^ mul68(m[55:48]) ^ mulE5(m[63:56]);
        s0[23:16] = mul02(m[7:0]) ^ mulA1(m[15:8]) ^ mulFC(m[23:16]) ^ mulC1(m[31:24]) ^ mul47(m[39:32]) ^ mulAE(m[47:40]) ^ mul3D(m[55:48]) ^ mul19(m[63:56]);
        s0[31:24] = mulA4(m[7:0]) ^ mul55(m[15:8]) ^ mul87(m[23:16]) ^ mul5A(m[31:24]) ^ mul58(m[39:32]) ^ mulDB(m[47:40]) ^ mul9E(m[55:48]) ^ mul03(m[63:56]);

        s1[7:0]   = m[71:64] ^ mulA4(m[79:72]) ^ mul55(m[87:80]) ^ mul87(m[95:88]) ^ mul5A(m[103:96]) ^ mul58(m[111:104]) ^ mulDB(m[119:112]) ^ mul9E(m[127:120]);
        s1[15:8]  = mulA4(m[71:64]) ^ mul56(m[79:72]) ^ mul82(m[87:80]) ^ mulF3(m[95:88]) ^ mul1E(m[103:96]) ^ mulC6(m[111:104]) ^ mul68(m[119:112]) ^ mulE5(m[127:120]);
        s1[23:16] = mul02(m[71:64]) ^ mulA1(m[79:72]) ^ mulFC(m[87:80]) ^ mulC1(m[95:88]) ^ mul47(m[103:96]) ^ mulAE(m[111:104]) ^ mul3D(m[119:112]) ^ mul19(m[127:120]);
        s1[31:24] = mulA4(m[71:64]) ^ mul55(m[79:72]) ^ mul87(m[87:80]) ^ mul5A(m[95:88]) ^ mul58(m[103:96]) ^ mulDB(m[111:104]) ^ mul9E(m[119:112]) ^ mul03(m[127:120]);
    end

endmodule