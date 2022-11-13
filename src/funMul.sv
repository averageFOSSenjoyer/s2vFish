`ifndef FUNMUL_H
`define FUNMUL_H

function bit [7:0] mul5B(input bit [7:0] i);
    mul5B[0] = i[2] ^ i[0];
    mul5B[1] = i[3] ^ i[1] ^ i[0];
    mul5B[2] = i[4] ^ i[2] ^ i[1];
    mul5B[3] = i[5] ^ i[3] ^ i[0];
    mul5B[4] = i[6] ^ i[4] ^ i[1] ^ i[0];
    mul5B[5] = i[7] ^ i[5] ^ i[1];
    mul5B[6] = i[6] ^ i[0];
    mul5B[7] = i[7] ^ i[1];
endfunction

function bit [7:0] mulEF(input bit [7:0] i);
    mulEF[0] = i[2] ^ i[1] ^ i[0];
    mulEF[1] = i[3] ^ i[2] ^ i[1] ^ i[0];
    mulEF[2] = i[4] ^ i[3] ^ i[2] ^ i[1] ^ i[0];
    mulEF[3] = i[5] ^ i[4] ^ i[3] ^ i[0];
    mulEF[4] = i[6] ^ i[5] ^ i[4] ^ i[1];
    mulEF[5] = i[7] ^ i[6] ^ i[5] ^ i[1] ^ i[0];
    mulEF[6] = i[7] ^ i[6] ^ i[0];
    mulEF[7] = i[7] ^ i[1] ^ i[0];
endfunction

`endif