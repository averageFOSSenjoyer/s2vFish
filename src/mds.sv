module mds
(
    input logic [31:0] i,
    output logic [31:0] o
);
    logic [7:0] y05B, y0EF, y15B, y1EF, y25B, y2EF, y35B, y3EF;

    mul5B y05 (.i(i[7:0]), .o(y05B));
    mul5B y15 (.i(i[15:8]), .o(y15B));
    mul5B y25 (.i(i[23:16]), .o(y25B));
    mul5B y35 (.i(i[31:24]), .o(y35B));
    mulEF y0E (.i(i[7:0]), .o(y0EF));
    mulEF y1E (.i(i[15:8]), .o(y1EF));
    mulEF y2E (.i(i[23:16]), .o(y2EF));
    mulEF y3E (.i(i[31:24]), .o(y3EF));

    always_comb begin
        o[7:0] = i[7:0] ^ y1EF ^ y25B ^ y35B;
        o[15:8] = y05B ^ y1EF ^ y2EF ^ i[31:24];
        o[23:16] = y0EF ^ y15B ^ i[23:16] ^ y3EF;
        o[31:24] = y0EF ^ i[15:8] ^ y2EF ^ y35B;
    end

    // always_comb begin
    //     o[7:0]   = 8'h01 * i[7:0] ^ 8'hEF * i[15:8] ^ 8'h5B * i[23:16] ^ 8'h5B * i[31:24];
    //     o[15:8]  = 8'h5B * i[7:0] ^ 8'hEF * i[15:8] ^ 8'hEF * i[23:16] ^ 8'h01 * i[31:24];
    //     o[23:16] = 8'hEF * i[7:0] ^ 8'h5B * i[15:8] ^ 8'h01 * i[23:16] ^ 8'hEF * i[31:24];
    //     o[31:24] = 8'hEF * i[7:0] ^ 8'h01 * i[15:8] ^ 8'hEF * i[23:16] ^ 8'h5B * i[31:24];
    // end

endmodule