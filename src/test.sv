// entity mul_5b is
// port	(
// 		in_5b 	: in std_logic_vector(7 downto 0);
// 		out_5b 	: out std_logic_vector(7 downto 0)
// 		);
// end mul_5b;

// architecture mul_5b_arch of mul_5b is
// begin
// 	out_5b(0) <= in_5b(2) XOR in_5b(0);
// 	out_5b(1) <= in_5b(3) XOR in_5b(1) XOR in_5b(0);
// 	out_5b(2) <= in_5b(4) XOR in_5b(2) XOR in_5b(1);
// 	out_5b(3) <= in_5b(5) XOR in_5b(3) XOR in_5b(0);
// 	out_5b(4) <= in_5b(6) XOR in_5b(4) XOR in_5b(1) XOR in_5b(0);
// 	out_5b(5) <= in_5b(7) XOR in_5b(5) XOR in_5b(1);
// 	out_5b(6) <= in_5b(6) XOR in_5b(0);
// 	out_5b(7) <= in_5b(7) XOR in_5b(1);
// end mul_5b_arch;

module test
(
    input logic [7:0] in_5b,
    output logic [7:0] out_5b
);

    always_comb begin
        out_5b[0] = in_5b[2] ^ in_5b[0];
        out_5b[1] = in_5b[3] ^ in_5b[1] ^ in_5b[0];
        out_5b[2] = in_5b[4] ^ in_5b[2] ^ in_5b[1];
        out_5b[3] = in_5b[5] ^ in_5b[3] ^ in_5b[0];
        out_5b[4] = in_5b[6] ^ in_5b[4] ^ in_5b[1] ^ in_5b[0];
        out_5b[5] = in_5b[7] ^ in_5b[5] ^ in_5b[1];
        out_5b[6] = in_5b[6] ^ in_5b[0];
        out_5b[7] = in_5b[7] ^ in_5b[1];
    end

endmodule
