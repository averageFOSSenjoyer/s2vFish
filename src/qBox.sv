module qBox #(parameter q = 0)
(
    input logic [7:0] i,
    output logic [7:0] o
);

    logic [3:0] a0, b0, a1, b1, a2, b2, a3, b3;

    always_comb begin
        a0 = i[7:4];
        b0 = i[3:0];

        a1 = a0 ^ b0;
        b1 = a0 ^ {b0[0], b0[3:1]} ^ {a0[0], 3'b000};

        a3 = a2 ^ b2;
        b3 = a2 ^ {b2[0], b2[3:1]} ^ {a2[0], 3'b000};
    end

    tBox #(.q(q), .t(0)) t0 (.i(a1), .o(a2));
    tBox #(.q(q), .t(1)) t1 (.i(b1), .o(b2));
    tBox #(.q(q), .t(2)) t2 (.i(a3), .o(o[7:4]));
    tBox #(.q(q), .t(3)) t3 (.i(b3), .o(o[3:0]));

endmodule