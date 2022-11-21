#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <limits.h>

int main(int argc, char** argv) {
    if (argc != 2)
        return -1;

    char out[80];

    FILE* rawData = fopen("./rawData.txt", "w");
    FILE* testData = fopen("./testData.txt", "w");

    srand(time(NULL));

    unsigned long long int lines = strtoll(argv[1], NULL, 10) * 32768;

    unsigned int base[4] = {rand() % ((long)INT_MAX - INT_MIN + 1) + rand() % INT_MIN,
                            rand() % ((long)INT_MAX - INT_MIN + 1) + rand() % INT_MIN,
                            rand() % ((long)INT_MAX - INT_MIN + 1) + rand() % INT_MIN,
                            rand() % ((long)INT_MAX - INT_MIN + 1) + rand() % INT_MIN};

    sprintf(out, "%02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x\n", ((base[0] & 0xFF000000) >> 24),
                                                                                                      ((base[0] & 0x00FF0000) >> 16), 
                                                                                                      ((base[0] & 0x0000FF00) >> 8),
                                                                                                      (base[0] & 0x000000FF),
                                                                                                      ((base[1] & 0xFF000000) >> 24),  
                                                                                                      ((base[1] & 0x00FF0000) >> 16),
                                                                                                      ((base[1] & 0x0000FF00) >> 8),
                                                                                                      (base[1] & 0x000000FF),
                                                                                                      ((base[2] & 0xFF000000) >> 24), 
                                                                                                      ((base[2] & 0x00FF0000) >> 16),
                                                                                                      ((base[2] & 0x0000FF00) >> 8),
                                                                                                      (base[2] & 0x000000FF), 
                                                                                                      ((base[3] & 0xFF000000) >> 24), 
                                                                                                      ((base[3] & 0x00FF0000) >> 16), 
                                                                                                      ((base[3] & 0x0000FF00) >> 8),
                                                                                                      (base[3] & 0x000000FF));
    fputs(out, testData);

    for (unsigned long long int i = 0; i < lines; i++) {
        unsigned int block[4] = {rand() % ((long)INT_MAX - INT_MIN + 1) + rand() % INT_MIN,
                                 rand() % ((long)INT_MAX - INT_MIN + 1) + rand() % INT_MIN,
                                 rand() % ((long)INT_MAX - INT_MIN + 1) + rand() % INT_MIN,
                                 rand() % ((long)INT_MAX - INT_MIN + 1) + rand() % INT_MIN};
        sprintf(out, "%02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x\n", ((block[0] & 0xFF000000) >> 24),
                                                                                                          ((block[0] & 0x00FF0000) >> 16), 
                                                                                                          ((block[0] & 0x0000FF00) >> 8),
                                                                                                          (block[0] & 0x000000FF),
                                                                                                          ((block[1] & 0xFF000000) >> 24),  
                                                                                                          ((block[1] & 0x00FF0000) >> 16),
                                                                                                          ((block[1] & 0x0000FF00) >> 8),
                                                                                                          (block[1] & 0x000000FF),
                                                                                                          ((block[2] & 0xFF000000) >> 24), 
                                                                                                          ((block[2] & 0x00FF0000) >> 16),
                                                                                                          ((block[2] & 0x0000FF00) >> 8),
                                                                                                          (block[2] & 0x000000FF), 
                                                                                                          ((block[3] & 0xFF000000) >> 24), 
                                                                                                          ((block[3] & 0x00FF0000) >> 16), 
                                                                                                          ((block[3] & 0x0000FF00) >> 8),
                                                                                                          (block[3] & 0x000000FF));
        fputs(out, testData);
        sprintf(out, "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\n", ((block[0] & 0xFF000000) >> 24),
                                                                                           ((block[0] & 0x00FF0000) >> 16), 
                                                                                           ((block[0] & 0x0000FF00) >> 8),
                                                                                           (block[0] & 0x000000FF),
                                                                                           ((block[1] & 0xFF000000) >> 24),  
                                                                                           ((block[1] & 0x00FF0000) >> 16),
                                                                                           ((block[1] & 0x0000FF00) >> 8),
                                                                                           (block[1] & 0x000000FF),
                                                                                           ((block[2] & 0xFF000000) >> 24), 
                                                                                           ((block[2] & 0x00FF0000) >> 16),
                                                                                           ((block[2] & 0x0000FF00) >> 8),
                                                                                           (block[2] & 0x000000FF), 
                                                                                           ((block[3] & 0xFF000000) >> 24), 
                                                                                           ((block[3] & 0x00FF0000) >> 16), 
                                                                                           ((block[3] & 0x0000FF00) >> 8),
                                                                                           (block[3] & 0x000000FF));
        fputs(out, rawData);
    }
    fclose(testData);
    fclose(rawData);

    return 0;
}

// gcc randData.c -o randDatac