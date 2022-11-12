module mux
(
    input logic [31:0] a, b,
    input logic sel,
    output logic [31:0] o
);

    always_comb begin
        if (sel)
            o = b;
        else
            o = a;
    end

endmodule