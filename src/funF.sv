module funF
(
    input logic [31:0] a, b, s0, s1, k0, k1,
    output logic [31:0] ao, bo
);

    logic [31:0] gOut0, gOut1, phtOut0, phtOut1;

    funG g0 (.i(a), .s0(s0), .s1(s1), .o(gOut0));
    funG g1 (.i({b[23:0], b[31:24]}), .s0(s0), .s1(s1), .o(gOut1));

    pht pht0 (.a(gOut0), .b(gOut1), .ao(phtOut0), .bo(phtOut1));

    assign ao = phtOut0 + k0;
    assign bo = phtOut1 + k1;

endmodule