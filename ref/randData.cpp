#include <iostream>
#include <fstream>
#include <iomanip>
#include <random>

int main(int argc, char** argv) {
    if (argc != 2)
        return -1;

    std::ofstream rawData;
    rawData.open("./rawData.txt");
    std::ofstream testData;
    testData.open("./testData.txt");

    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<unsigned int> dist(0, UINT32_MAX);

    unsigned long long int lines = std::atoi(argv[1]) * 32768;

    testData << std::hex << std::setfill('0') << std::setw(2) << ((static_cast<unsigned int>(dist(gen)) & 0xFF000000) >> 24)  << " "
                         << std::setfill('0') << std::setw(2) << ((static_cast<unsigned int>(dist(gen)) & 0x00FF0000) >> 16) << " "
                         << std::setfill('0') << std::setw(2) << ((static_cast<unsigned int>(dist(gen))& 0x0000FF00) >> 8) << " "
                         << std::setfill('0') << std::setw(2) << (static_cast<unsigned int>(dist(gen)) & 0x000000FF) << " "
                         << std::setfill('0') << std::setw(2) << ((static_cast<unsigned int>(dist(gen)) & 0xFF000000) >> 24)  << " "
                         << std::setfill('0') << std::setw(2) << ((static_cast<unsigned int>(dist(gen)) & 0x00FF0000) >> 16) << " "
                         << std::setfill('0') << std::setw(2) << ((static_cast<unsigned int>(dist(gen)) & 0x0000FF00) >> 8) << " "
                         << std::setfill('0') << std::setw(2) << (static_cast<unsigned int>(dist(gen)) & 0x000000FF) << " "
                         << std::setfill('0') << std::setw(2) << ((static_cast<unsigned int>(dist(gen)) & 0xFF000000) >> 24)  << " "
                         << std::setfill('0') << std::setw(2) << ((static_cast<unsigned int>(dist(gen)) & 0x00FF0000) >> 16) << " "
                         << std::setfill('0') << std::setw(2) << ((static_cast<unsigned int>(dist(gen)) & 0x0000FF00) >> 8) << " "
                         << std::setfill('0') << std::setw(2) << (static_cast<unsigned int>(dist(gen)) & 0x000000FF) << " "
                         << std::setfill('0') << std::setw(2) << ((static_cast<unsigned int>(dist(gen)) & 0xFF000000) >> 24)  << " "
                         << std::setfill('0') << std::setw(2) << ((static_cast<unsigned int>(dist(gen)) & 0x00FF0000) >> 16) << " "
                         << std::setfill('0') << std::setw(2) << ((static_cast<unsigned int>(dist(gen)) & 0x0000FF00) >> 8) << " "
                         << std::setfill('0') << std::setw(2) << (static_cast<unsigned int>(dist(gen)) & 0x000000FF) << '\n';

    unsigned int block[4];

    for (unsigned long long int i = 0; i < lines; i++) {
        block[0] = static_cast<unsigned int>(dist(gen)); block[1] = static_cast<unsigned int>(dist(gen)); block[2] = static_cast<unsigned int>(dist(gen)); block[3] = static_cast<unsigned int>(dist(gen)); 
        rawData << std::hex << std::setfill('0') << std::setw(2) << block[0] 
                            << std::setfill('0') << std::setw(2) << block[1] 
                            << std::setfill('0') << std::setw(2) << block[2] 
                            << std::setfill('0') << std::setw(2) << block[3] << '\n';
        testData << std::hex << std::setfill('0') << std::setw(2) << ((block[0] & 0xFF000000) >> 24)  << " "
                             << std::setfill('0') << std::setw(2) << ((block[0] & 0x00FF0000) >> 16) << " "
                             << std::setfill('0') << std::setw(2) << ((block[0] & 0x0000FF00) >> 8) << " "
                             << std::setfill('0') << std::setw(2) << (block[0] & 0x000000FF) << " "
                             << std::setfill('0') << std::setw(2) << ((block[1] & 0xFF000000) >> 24)  << " "
                             << std::setfill('0') << std::setw(2) << ((block[1] & 0x00FF0000) >> 16) << " "
                             << std::setfill('0') << std::setw(2) << ((block[1] & 0x0000FF00) >> 8) << " "
                             << std::setfill('0') << std::setw(2) << (block[1] & 0x000000FF) << " "
                             << std::setfill('0') << std::setw(2) << ((block[2] & 0xFF000000) >> 24)  << " "
                             << std::setfill('0') << std::setw(2) << ((block[2] & 0x00FF0000) >> 16) << " "
                             << std::setfill('0') << std::setw(2) << ((block[2] & 0x0000FF00) >> 8) << " "
                             << std::setfill('0') << std::setw(2) << (block[2] & 0x000000FF) << " "
                             << std::setfill('0') << std::setw(2) << ((block[3] & 0xFF000000) >> 24)  << " "
                             << std::setfill('0') << std::setw(2) << ((block[3] & 0x00FF0000) >> 16) << " "
                             << std::setfill('0') << std::setw(2) << ((block[3] & 0x0000FF00) >> 8) << " "
                             << std::setfill('0') << std::setw(2) << (block[3] & 0x000000FF) << '\n';
    }

    rawData.close();
    testData.close();
}

// g++ randData.cpp -o randDatacpp