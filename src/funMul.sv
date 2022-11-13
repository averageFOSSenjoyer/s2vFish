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

function bit [7:0] mulA4(input bit [7:0] i);
    mulA4[0] = i[7] ^ i[1];
	mulA4[1] = i[2];
	mulA4[2] = i[7] ^ i[3] ^ i[1] ^ i[0];
	mulA4[3] = i[7] ^ i[4] ^ i[2];
	mulA4[4] = i[5] ^ i[3];
	mulA4[5] = i[6] ^ i[4] ^ i[0];
	mulA4[6] = i[5];
	mulA4[7] = i[6] ^ i[0];
endfunction

function bit [7:0] mul55(input bit [7:0] i);
    mul55[0] = i[7] ^ i[6] ^ i[2] ^ i[0];
	mul55[1] = i[7] ^ i[3] ^ i[1];
	mul55[2] = i[7] ^ i[6] ^ i[4] ^ i[0];
	mul55[3] = i[6] ^ i[5] ^ i[2] ^ i[1];
	mul55[4] = i[7] ^ i[6] ^ i[3] ^ i[2] ^ i[0];
	mul55[5] = i[7] ^ i[4] ^ i[3] ^ i[1];
	mul55[6] = i[7] ^ i[6] ^ i[5] ^ i[4] ^ i[0];
	mul55[7] = i[7] ^ i[6] ^ i[5] ^ i[1];
endfunction

function bit [7:0] mul87(input bit [7:0] i);
    mul87[0] = i[7] ^ i[5] ^ i[3] ^ i[1] ^ i[0];
	mul87[1] = i[6] ^ i[4] ^ i[2] ^ i[1] ^ i[0];
	mul87[2] = i[2] ^ i[0];
	mul87[3] = i[7] ^ i[5];
	mul87[4] = i[6];
	mul87[5] = i[7];
	mul87[6] = i[7] ^ i[5] ^ i[3] ^ i[1];
	mul87[7] = i[6] ^ i[4] ^ i[2] ^ i[0];
endfunction

function bit [7:0] mul5A(input bit [7:0] i);
    mul5A[0] = i[7] ^ i[5] ^ i[2];
	mul5A[1] = i[6] ^ i[3] ^ i[0];
	mul5A[2] = i[5] ^ i[4] ^ i[2] ^ i[1];
	mul5A[3] = i[7] ^ i[6] ^ i[3] ^ i[0];
	mul5A[4] = i[7] ^ i[4] ^ i[1] ^ i[0];
	mul5A[5] = i[5] ^ i[2] ^ i[1];
	mul5A[6] = i[7] ^ i[6] ^ i[5] ^ i[3] ^ i[0];
	mul5A[7] = i[7] ^ i[6] ^ i[4] ^ i[1];
endfunction

function bit [7:0] mul58(input bit [7:0] i);
    mul58[0] = i[5] ^ i[2];
	mul58[1] = i[6] ^ i[3];
	mul58[2] = i[7] ^ i[5] ^ i[4] ^ i[2];
	mul58[3] = i[6] ^ i[3] ^ i[2] ^ i[0];
	mul58[4] = i[7] ^ i[4] ^ i[3] ^ i[1] ^ i[0];
	mul58[5] = i[5] ^ i[4] ^ i[2] ^ i[1];
	mul58[6] = i[6] ^ i[3] ^ i[0];
	mul58[7] = i[7] ^ i[4] ^ i[1];
endfunction

function bit [7:0] mulDB(input bit [7:0] i);
    mulDB[0] = i[7] ^ i[6] ^ i[3] ^ i[2] ^ i[1] ^ i[0];
	mulDB[1] = i[7] ^ i[4] ^ i[3] ^ i[2] ^ i[1] ^ i[0];
	mulDB[2] = i[7] ^ i[6] ^ i[5] ^ i[4];
	mulDB[3] = i[5] ^ i[3] ^ i[2] ^ i[1] ^ i[0];
	mulDB[4] = i[6] ^ i[4] ^ i[3] ^ i[2] ^ i[1] ^ i[0];
	mulDB[5] = i[7] ^ i[5] ^ i[4] ^ i[3] ^ i[2] ^ i[1];
	mulDB[6] = i[7] ^ i[5] ^ i[4] ^ i[1] ^ i[0];
	mulDB[7] = i[6] ^ i[5] ^ i[2] ^ i[1] ^ i[0];
endfunction

function bit [7:0] mul9E(input bit [7:0] i);
    mul9E[0] = i[6] ^ i[4] ^ i[3] ^ i[1];
	mul9E[1] = i[7] ^ i[5] ^ i[4] ^ i[2] ^ i[0];
	mul9E[2] = i[5] ^ i[4] ^ i[0];
	mul9E[3] = i[5] ^ i[4] ^ i[3] ^ i[0];
	mul9E[4] = i[6] ^ i[5] ^ i[4] ^ i[1] ^ i[0];
	mul9E[5] = i[7] ^ i[6] ^ i[5] ^ i[2] ^ i[1];
	mul9E[6] = i[7] ^ i[4] ^ i[2] ^ i[1];
	mul9E[7] = i[5] ^ i[3] ^ i[2] ^ i[0];
endfunction

function bit [7:0] mul56(input bit [7:0] i);
    mul56[0] = i[6] ^ i[2];
	mul56[1] = i[7] ^ i[3] ^ i[0];
	mul56[2] = i[6] ^ i[4] ^ i[2] ^ i[1] ^ i[0];
	mul56[3] = i[7] ^ i[6] ^ i[5] ^ i[3] ^ i[1];
	mul56[4] = i[7] ^ i[6] ^ i[4] ^ i[2] ^ i[0];
	mul56[5] = i[7] ^ i[5] ^ i[3] ^ i[1];
	mul56[6] = i[4] ^ i[0];
	mul56[7] = i[5] ^ i[1];
endfunction

function bit [7:0] mul82(input bit [7:0] i);
    mul82[0] = i[7] ^ i[6] ^ i[5] ^ i[3] ^ i[1];
	mul82[1] = i[7] ^ i[6] ^ i[4] ^ i[2] ^ i[0];
	mul82[2] = i[6];
	mul82[3] = i[6] ^ i[5] ^ i[3] ^ i[1];
	mul82[4] = i[7] ^ i[6] ^ i[4] ^ i[2];
	mul82[5] = i[7] ^ i[5] ^ i[3];
	mul82[6] = i[7] ^ i[5] ^ i[4] ^ i[3] ^ i[1];
	mul82[7] = i[6] ^ i[5] ^ i[4] ^ i[2] ^ i[0];
endfunction

function bit [7:0] mulF3(input bit [7:0] i);
    mulF3[0] = i[7] ^ i[6] ^ i[2] ^ i[1] ^ i[0];
	mulF3[1] = i[7] ^ i[3] ^ i[2] ^ i[1] ^ i[0];
	mulF3[2] = i[7] ^ i[6] ^ i[4] ^ i[3];
	mulF3[3] = i[6] ^ i[5] ^ i[4] ^ i[2] ^ i[1];
	mulF3[4] = i[7] ^ i[6] ^ i[5] ^ i[3] ^ i[2] ^ i[0];
	mulF3[5] = i[7] ^ i[6] ^ i[4] ^ i[3] ^ i[1] ^ i[0];
	mulF3[6] = i[6] ^ i[5] ^ i[4] ^ i[0];
	mulF3[7] = i[7] ^ i[6] ^ i[5] ^ i[1] ^ i[0];
endfunction

function bit [7:0] mul1E(input bit [7:0] i);
    mul1E[0] = i[5] ^ i[4];
	mul1E[1] = i[6] ^ i[5] ^ i[0];
	mul1E[2] = i[7] ^ i[6] ^ i[5] ^ i[4] ^ i[1] ^ i[0];
	mul1E[3] = i[7] ^ i[6] ^ i[4] ^ i[2] ^ i[1] ^ i[0];
	mul1E[4] = i[7] ^ i[5] ^ i[3] ^ i[2] ^ i[1] ^ i[0];
	mul1E[5] = i[6] ^ i[4] ^ i[3] ^ i[2] ^ i[1];
	mul1E[6] = i[7] ^ i[3] ^ i[2];
	mul1E[7] = i[4] ^ i[3];
endfunction

function bit [7:0] mulC6(input bit [7:0] i);
    mulC6[0] = i[6] ^ i[5] ^ i[4] ^ i[3] ^ i[2] ^ i[1];
	mulC6[1] = i[7] ^ i[6] ^ i[5] ^ i[4] ^ i[3] ^ i[2] ^ i[0];
	mulC6[2] = i[7] ^ i[2] ^ i[0];
	mulC6[3] = i[6] ^ i[5] ^ i[4] ^ i[2];
	mulC6[4] = i[7] ^ i[6] ^ i[5] ^ i[3];
	mulC6[5] = i[7] ^ i[6] ^ i[4];
	mulC6[6] = i[7] ^ i[6] ^ i[4] ^ i[3] ^ i[2] ^ i[1] ^ i[0];
	mulC6[7] = i[7] ^ i[5] ^ i[4] ^ i[3] ^ i[2] ^ i[1] ^ i[0];
endfunction

function bit [7:0] mul68(input bit [7:0] i);
    mul68[0] = i[7] ^ i[6] ^ i[4] ^ i[3] ^ i[2];
	mul68[1] = i[7] ^ i[5] ^ i[4] ^ i[3];
	mul68[2] = i[7] ^ i[5] ^ i[3] ^ i[2];
	mul68[3] = i[7] ^ i[2] ^ i[0];
	mul68[4] = i[3] ^ i[1];
	mul68[5] = i[4] ^ i[2] ^ i[0];
	mul68[6] = i[7] ^ i[6] ^ i[5] ^ i[4] ^ i[2] ^ i[1] ^ i[0];
	mul68[7] = i[7] ^ i[6] ^ i[5] ^ i[3] ^ i[2] ^ i[1];
endfunction

function bit [7:0] mulE5(input bit [7:0] i);
    mulE5[0] = i[6] ^ i[4] ^ i[2] ^ i[1] ^ i[0];
	mulE5[1] = i[7] ^ i[5] ^ i[3] ^ i[2] ^ i[1];
	mulE5[2] = i[3] ^ i[1] ^ i[0];
	mulE5[3] = i[6];
	mulE5[4] = i[7];
	mulE5[5] = i[0];
	mulE5[6] = i[6] ^ i[4] ^ i[2] ^ i[0];
	mulE5[7] = i[7] ^ i[5] ^ i[3] ^ i[1] ^ i[0];
endfunction

function bit [7:0] mul02(input bit [7:0] i);
    mul02[0] = i[7];
	mul02[1] = i[0];
	mul02[2] = i[7] ^ i[1];
	mul02[3] = i[7] ^ i[2];
	mul02[4] = i[3];
	mul02[5] = i[4];
	mul02[6] = i[7] ^ i[5];
	mul02[7] = i[6];
endfunction

function bit [7:0] mulA1(input bit [7:0] i);
    mulA1[0] = i[7] ^ i[6] ^ i[1] ^ i[0];
	mulA1[1] = i[7] ^ i[2] ^ i[1];
	mulA1[2] = i[7] ^ i[6] ^ i[3] ^ i[2] ^ i[1];
	mulA1[3] = i[6] ^ i[4] ^ i[3] ^ i[2] ^ i[1];
	mulA1[4] = i[7] ^ i[5] ^ i[4] ^ i[3] ^ i[2];
	mulA1[5] = i[6] ^ i[5] ^ i[4] ^ i[3] ^ i[0];
	mulA1[6] = i[5] ^ i[4];
	mulA1[7] = i[6] ^ i[5] ^ i[0];
endfunction

function bit [7:0] mulFC(input bit [7:0] i);
    mulFC[0] = i[7] ^ i[5] ^ i[2] ^ i[1];
	mulFC[1] = i[6] ^ i[3] ^ i[2];
	mulFC[2] = i[5] ^ i[4] ^ i[3] ^ i[2] ^ i[1] ^ i[0];
	mulFC[3] = i[7] ^ i[6] ^ i[4] ^ i[3] ^ i[0];
	mulFC[4] = i[7] ^ i[5] ^ i[4] ^ i[1] ^ i[0];
	mulFC[5] = i[6] ^ i[5] ^ i[2] ^ i[1] ^ i[0];
	mulFC[6] = i[6] ^ i[5] ^ i[3] ^ i[0];
	mulFC[7] = i[7] ^ i[6] ^ i[4] ^ i[1] ^ i[0];
endfunction

function bit [7:0] mulC1(input bit [7:0] i);
    mulC1[0] = i[7] ^ i[5] ^ i[4] ^ i[3] ^ i[2] ^ i[1] ^ i[0];
	mulC1[1] = i[6] ^ i[5] ^ i[4] ^ i[3] ^ i[2] ^ i[1];
	mulC1[2] = i[6] ^ i[1];
	mulC1[3] = i[5] ^ i[4] ^ i[3] ^ i[1];
	mulC1[4] = i[6] ^ i[5] ^ i[4] ^ i[2];
	mulC1[5] = i[7] ^ i[6] ^ i[5] ^ i[3];
	mulC1[6] = i[6] ^ i[5] ^ i[3] ^ i[2] ^ i[1] ^ i[0];
	mulC1[7] = i[7] ^ i[6] ^ i[4] ^ i[3] ^ i[2] ^ i[1] ^ i[0];
endfunction

function bit [7:0] mul47(input bit [7:0] i);
    mul47[0] = i[4] ^ i[2] ^ i[0];
	mul47[1] = i[5] ^ i[3] ^ i[1] ^ i[0];
	mul47[2] = i[6] ^ i[1] ^ i[0];
	mul47[3] = i[7] ^ i[4] ^ i[1];
	mul47[4] = i[5] ^ i[2];
	mul47[5] = i[6] ^ i[3];
	mul47[6] = i[7] ^ i[2] ^ i[0];
	mul47[7] = i[3] ^ i[1];
endfunction

function bit [7:0] mulAE(input bit [7:0] i);
    mulAE[0] = i[7] ^ i[5] ^ i[1];
	mulAE[1] = i[6] ^ i[2] ^ i[0];
	mulAE[2] = i[5] ^ i[3] ^ i[0];
	mulAE[3] = i[7] ^ i[6] ^ i[5] ^ i[4] ^ i[0];
	mulAE[4] = i[7] ^ i[6] ^ i[5] ^ i[1];
	mulAE[5] = i[7] ^ i[6] ^ i[2] ^ i[0];
	mulAE[6] = i[5] ^ i[3];
	mulAE[7] = i[6] ^ i[4] ^ i[0];
endfunction

function bit [7:0] mul3D(input bit [7:0] i);
    mul3D[0] = i[4] ^ i[3] ^ i[0];
	mul3D[1] = i[5] ^ i[4] ^ i[1];
	mul3D[2] = i[6] ^ i[5] ^ i[4] ^ i[3] ^ i[2] ^ i[0];
	mul3D[3] = i[7] ^ i[6] ^ i[5] ^ i[1] ^ i[0];
	mul3D[4] = i[7] ^ i[6] ^ i[2] ^ i[1] ^ i[0];
	mul3D[5] = i[7] ^ i[3] ^ i[2] ^ i[1] ^ i[0];
	mul3D[6] = i[2] ^ i[1];
	mul3D[7] = i[3] ^ i[2];
endfunction

function bit [7:0] mul19(input bit [7:0] i);
    mul19[0] = i[7] ^ i[6] ^ i[5] ^ i[4] ^ i[0];
	mul19[1] = i[7] ^ i[6] ^ i[5] ^ i[1];
	mul19[2] = i[5] ^ i[4] ^ i[2];
	mul19[3] = i[7] ^ i[4] ^ i[3] ^ i[0];
	mul19[4] = i[5] ^ i[4] ^ i[1] ^ i[0];
	mul19[5] = i[6] ^ i[5] ^ i[2] ^ i[1];
	mul19[6] = i[5] ^ i[4] ^ i[3] ^ i[2];
	mul19[7] = i[6] ^ i[5] ^ i[4] ^ i[3];
endfunction

function bit [7:0] mul03(input bit [7:0] i);
    mul03[0] = i[7] ^ i[0];
	mul03[1] = i[1] ^ i[0];
	mul03[2] = i[7] ^ i[2] ^ i[1];
	mul03[3] = i[7] ^ i[3] ^ i[2];
	mul03[4] = i[4] ^ i[3];
	mul03[5] = i[5] ^ i[4];
	mul03[6] = i[7] ^ i[6] ^ i[5];
	mul03[7] = i[7] ^ i[6];
endfunction

`endif