module s2vFish_Interface (
	input logic clk, rst, AVL_READ, AVL_WRITE, AVL_CS,
	input  logic [3:0] AVL_BYTE_EN,
	input  logic [23:0] AVL_ADDR,
	input  logic [31:0] AVL_WRITEDATA,
	output logic [31:0] AVL_READDATA
);


endmodule