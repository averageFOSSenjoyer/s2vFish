module funG
(
    input logic [31:0] i, s0, s1,
    output logic [31:0] o
);

    logic [31:0] sBoxOut;

    sBox sb0 (.i(i), .s0(s0), .s1(s1), .o(sBoxOut));
    mds mds0 (.i(sBoxOut), .o(o));

endmodule