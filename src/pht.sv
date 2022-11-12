module pht
(
    input logic [31:0] a, b,
    output logic [31:0] ao, bo
);

    assign ao = a + b;
    assign bo = a + 2 * b;

endmodule