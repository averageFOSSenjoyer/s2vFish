#include <system.h>
#include <stdio.h>
#include <stdlib.h>
#include "typedef.h"

int main() {
	volatile s2vFish_Interface_t* s2vFish_Interface = BLOCK0_BASE;
	reset(s2vFish_Interface);

	uint32_t block[4], key[4], EnDe;
	char buf[50];

	while (1) {
		do {
			printf("\nPlease enter the 128-bit block you want to (de)cipher in 32-bit increments:\n");
			stdinToHex(buf, block);
			printf("\nIs this correct (y/N): %08x %08x %08x %08x\n", block[0], block[1], block[2], block[3]);
			fgets(buf, sizeof(buf), stdin);
		} while (*buf != 'y');

		do {
			printf("\nPlease enter the 128-bit key you want to use in 32-bit increments:\n");
			stdinToHex(buf, key);
			printf("\nIs this correct (y/N): %08x %08x %08x %08x\n", key[0], key[1], key[2], key[3]);
			fgets(buf, sizeof(buf), stdin);
		} while (*buf != 'y');

		do {
			printf("\nDo you want to encrypt(0) or decrypt(1)?\n");
			fgets(buf, sizeof(buf), stdin);
			EnDe = *buf - 48;
		} while (EnDe != 0 && EnDe != 1);

		process(s2vFish_Interface, block, key, EnDe);
		printResult(s2vFish_Interface);
	}

}
