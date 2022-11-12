module kBox
(
    input logic [31:0] m0, m1, m2, m3,
    input logic [7:0] i,
    output logic [31:0] ao, bo
);

    logic [31:0] gOut0, gOut1, bi;
    logic [7:0] ii, iii;

    assign ii = i * 2;
    assign iii = ii + 1;

    funG g0 (.i({ii, ii, ii, ii}), .s0(m2), .s1(m0), .o(gOut0));
    funG g1 (.i({iii, iii, iii, iii}), .s0(m3), .s1(m1), .o(gOut1));

    pht pht0 (.a(gOut0), .b({gOut1[23:0], gOut1[31:24]}), .ao(ao), .bo(bi));

    assign bo = {bi[22:0], bi[31:23]};

endmodule