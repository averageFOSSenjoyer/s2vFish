module sBox
(
    input logic [31:0] i, s0, s1,
    output logic [31:0] o
);

    ssBox #(.sID(0)) sb0 (.i(i[7:0]), .s0(s0[7:0]), .s1(s1[7:0]), .o(o[7:0]));
    ssBox #(.sID(1)) sb1 (.i(i[15:8]), .s0(s0[15:8]), .s1(s1[15:8]), .o(o[15:8]));
    ssBox #(.sID(2)) sb2 (.i(i[23:16]), .s0(s0[23:16]), .s1(s1[23:16]), .o(o[23:16]));
    ssBox #(.sID(3)) sb3 (.i(i[31:24]), .s0(s0[31:24]), .s1(s1[31:24]), .o(o[31:24]));

endmodule

module ssBox #(parameter sID = 0)
(
    input logic [7:0] i, s0, s1,
    output logic [7:0] o
);

    logic [7:0] a1, a2, a3, a4;

    assign a2 = a1 ^ s0;
    assign a4 = a3 ^ s1;

    generate
        if (sID == 0) begin
            qBox #(.q(0)) q0 (.i(i), .o(a1));
            qBox #(.q(0)) q1 (.i(a2), .o(a3));
            qBox #(.q(1)) q2 (.i(a4), .o(o));
        end
        else if (sID == 1) begin
            qBox #(.q(1)) q0 (.i(i), .o(a1));
            qBox #(.q(0)) q1 (.i(a2), .o(a3));
            qBox #(.q(0)) q2 (.i(a4), .o(o));
        end
        else if (sID == 2) begin
            qBox #(.q(0)) q0 (.i(i), .o(a1));
            qBox #(.q(1)) q1 (.i(a2), .o(a3));
            qBox #(.q(1)) q2 (.i(a4), .o(o));
        end
        else begin
            qBox #(.q(1)) q0 (.i(i), .o(a1));
            qBox #(.q(1)) q1 (.i(a2), .o(a3));
            qBox #(.q(0)) q2 (.i(a4), .o(o));
        end
    endgenerate

endmodule