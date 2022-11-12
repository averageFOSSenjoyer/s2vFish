module mds
(
    input logic [31:0] i,
    output logic [31:0] o
);

    always_comb begin
        o[7:0]   = 8'h01 * i[7:0] + 8'hEF * i[15:8] + 8'h5B * i[23:16] + 8'h5B * i[31:24];
        o[15:8]  = 8'h5B * i[7:0] + 8'hEF * i[15:8] + 8'hEF * i[23:16] + 8'h01 * i[31:24];
        o[23:16] = 8'hEF * i[7:0] + 8'h5B * i[15:8] + 8'h01 * i[23:16] + 8'hEF * i[31:24];
        o[31:24] = 8'hEF * i[7:0] + 8'h01 * i[15:8] + 8'hEF * i[23:16] + 8'h5B * i[31:24];
    end

endmodule