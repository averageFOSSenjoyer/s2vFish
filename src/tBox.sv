module tBox #(parameter q = 0, parameter t = 0)
(
    input logic [3:0] i,
    output logic [3:0] o
);

    parameter [127:0] [3:0] ROM = {
        4'h8, 4'h1, 4'h7, 4'hD, 4'h6, 4'hF, 4'h3, 4'h2, 4'h0, 4'hB, 4'h5, 4'h9, 4'hE, 4'hC, 4'hA, 4'h4,
        4'hE, 4'hC, 4'hB, 4'h8, 4'h1, 4'h2, 4'h3, 4'h5, 4'hF, 4'h4, 4'hA, 4'h6, 4'h7, 4'h0, 4'h9, 4'hD,
        4'hB, 4'hA, 4'h5, 4'hE, 4'h6, 4'hD, 4'h9, 4'h0, 4'hC, 4'h8, 4'hF, 4'h3, 4'h2, 4'h4, 4'h7, 4'h1,
        4'hD, 4'h7, 4'hF, 4'h4, 4'h1, 4'h2, 4'h6, 4'hE, 4'h9, 4'hB, 4'h3, 4'h0, 4'h8, 4'h5, 4'hC, 4'hA,
        4'h2, 4'h8, 4'hB, 4'hD, 4'hF, 4'h7, 4'h6, 4'hE, 4'h3, 4'h1, 4'h9, 4'h4, 4'h0, 4'hA, 4'hC, 4'h5,
        4'h1, 4'hE, 4'h2, 4'hB, 4'h4, 4'hC, 4'h3, 4'h7, 4'h6, 4'hD, 4'hA, 4'h5, 4'hF, 4'h9, 4'h0, 4'h8,
        4'h4, 4'hC, 4'h7, 4'h5, 4'h1, 4'h6, 4'h9, 4'hA, 4'h0, 4'hE, 4'hD, 4'h8, 4'h2, 4'hB, 4'h3, 4'hF,
        4'hB, 4'h9, 4'h5, 4'h1, 4'hC, 4'h3, 4'hD, 4'hE, 4'h6, 4'h4, 4'h7, 4'hF, 4'h2, 4'h0, 4'h8, 4'hA
    };

    assign o = ROM[i + t << 4 + q << 6];

endmodule

// module tBoxq0t0
// (
//     input logic [3:0] i,
//     output logic [3:0] o
// );

//     parameter [3:0] [3:0] ROM = {
//         4'h8, 4'h1, 4'h7, 4'hD, 4'h6, 4'hF, 4'h3, 4'h2, 4'h0, 4'hB, 4'h5, 4'h9, 4'hE, 4'hC, 4'hA, 4'h4
//     }

//     assign o = ROM[i];

// endmodule

// module tBoxq0t1
// (
//     input logic [3:0] i,
//     output logic [3:0] o
// );

//     parameter [3:0] [3:0] ROM = {
//         4'hE, 4'hC, 4'hB, 4'h8, 4'h1, 4'h2, 4'h3, 4'h5, 4'hF, 4'h4, 4'hA, 4'h6, 4'h7, 4'h0, 4'h9, 4'hD
//     }

//     assign o = ROM[i];

// endmodule

// module tBoxq0t2
// (
//     input logic [3:0] i,
//     output logic [3:0] o
// );

//     parameter [3:0] [3:0] ROM = {
//         4'hB, 4'hA, 4'h5, 4'hE, 4'h6, 4'hD, 4'h9, 4'h0, 4'hC, 4'h8, 4'hF, 4'h3, 4'h2, 4'h4, 4'h7, 4'h1
//     }

//     assign o = ROM[i];

// endmodule

// module tBoxq0t3
// (
//     input logic [3:0] i,
//     output logic [3:0] o
// );

//     parameter [3:0] [3:0] ROM = {
//         4'hD, 4'h7, 4'hF, 4'h4, 4'h1, 4'h2, 4'h6, 4'hE, 4'h9, 4'hB, 4'h3, 4'h0, 4'h8, 4'h5, 4'hC, 4'hA
//     }

//     assign o = ROM[i];

// endmodule

// module tBoxq1t0
// (
//     input logic [3:0] i,
//     output logic [3:0] o
// );

//     parameter [3:0] [3:0] ROM = {
//         4'h2, 4'h8, 4'hB, 4'hD, 4'hF, 4'h7, 4'h6, 4'hE, 4'h3, 4'h1, 4'h9, 4'h4, 4'h0, 4'hA, 4'hC, 4'h5
//     }

//     assign o = ROM[i];

// endmodule

// module tBoxq1t1
// (
//     input logic [3:0] i,
//     output logic [3:0] o
// );

//     parameter [3:0] [3:0] ROM = {
//         4'h1, 4'hE, 4'h2, 4'hB, 4'h4, 4'hC, 4'h3, 4'h7, 4'h6, 4'hD, 4'hA, 4'h5, 4'hF, 4'h9, 4'h0, 4'h8
//     }

//     assign o = ROM[i];

// endmodule

// module tBoxq1t2
// (
//     input logic [3:0] i,
//     output logic [3:0] o
// );

//     parameter [3:0] [3:0] ROM = {
//         4'h4, 4'hC, 4'h7, 4'h5, 4'h1, 4'h6, 4'h9, 4'hA, 4'h0, 4'hE, 4'hD, 4'h8, 4'h2, 4'hB, 4'h3, 4'hF
//     }

//     assign o = ROM[i];

// endmodule

// module tBoxq1t3
// (
//     input logic [3:0] i,
//     output logic [3:0] o
// );

//     parameter [3:0] [3:0] ROM = {
//         4'hB, 4'h9, 4'h5, 4'h1, 4'hC, 4'h3, 4'hD, 4'hE, 4'h6, 4'h4, 4'h7, 4'hF, 4'h2, 4'h0, 4'h8, 4'hA
//     }

//     assign o = ROM[i];

// endmodule