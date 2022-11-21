#ifndef __TYPEDEF_H
#define __TYPEDEF_H
    typedef char int8_t;
    typedef unsigned char uint8_t;

    typedef short int16_t;
    typedef unsigned short uint16_t;

    typedef int int32_t;
    typedef unsigned int uint32_t;

    typedef long long int int64_t;
    typedef unsigned long long int uint64_t;

    typedef struct {
    	_Alignas(16) uint32_t block0;
    	_Alignas(16) uint32_t block1;
    	_Alignas(16) uint32_t block2;
    	_Alignas(16) uint32_t block3;
    	_Alignas(16) uint32_t key0;
    	_Alignas(16) uint32_t key1;
    	_Alignas(16) uint32_t key2;
    	_Alignas(16) uint32_t key3;
    	_Alignas(16) uint32_t out0;
    	_Alignas(16) uint32_t out1;
    	_Alignas(16) uint32_t out2;
    	_Alignas(16) uint32_t out3;
    	_Alignas(16) uint32_t start;
    	_Alignas(16) uint32_t EnDe;
    	_Alignas(16) uint32_t reset;
    	_Alignas(16) uint32_t busy;
    } s2vFish_Interface_t;

    extern inline void reset(volatile s2vFish_Interface_t* s2vFish_Interface) {
    	s2vFish_Interface->reset = 1;
    	s2vFish_Interface->reset = 0;
    }

    extern inline void process(volatile s2vFish_Interface_t* s2vFish_Interface,
    		                   uint32_t* block, uint32_t* key, uint32_t EnDe)
    {
    	s2vFish_Interface->block0 = block[0];
    	s2vFish_Interface->block1 = block[1];
    	s2vFish_Interface->block2 = block[2];
    	s2vFish_Interface->block3 = block[3];
    	s2vFish_Interface->key0 = key[0];
    	s2vFish_Interface->key1 = key[1];
    	s2vFish_Interface->key2 = key[2];
    	s2vFish_Interface->key3 = key[3];
    	s2vFish_Interface->EnDe = EnDe;
    	s2vFish_Interface->start = 1;
    	s2vFish_Interface->start = 0;
    	while (s2vFish_Interface->busy);
    }

    extern inline void printResult(volatile s2vFish_Interface_t* s2vFish_Interface) {
    	printf("\n/******************************************/\n");
    	printf("[Block]  %08x %08x %08x %08x\n", s2vFish_Interface->block0, s2vFish_Interface->block1, s2vFish_Interface->block2, s2vFish_Interface->block3);
    	printf("[Key]    %08x %08x %08x %08x\n", s2vFish_Interface->key0, s2vFish_Interface->key1, s2vFish_Interface->key2, s2vFish_Interface->key3);
    	printf("[Result] %08x %08x %08x %08x\n", s2vFish_Interface->out0, s2vFish_Interface->out1, s2vFish_Interface->out2, s2vFish_Interface->out3);
    	printf("/******************************************/\n\n");
    }

    extern inline void stdinToHex(char* buf, uint32_t* ret) {
    	char* end;
    	fgets(buf, 50, stdin);
    	ret[0] = strtoll(buf, &end, 16); ret[1] = strtoll(end, &end, 16); ret[2] = strtoll(end, &end, 16); ret[3] = strtoll(end, &end, 16);
    }

#endif
