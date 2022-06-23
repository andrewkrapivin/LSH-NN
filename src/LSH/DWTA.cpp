#include "DWTA.hpp"

DWTA::DWTA(size_t bitsPerChunk, size_t numChunksPerHash, size_t numHashes, size_t numElements)
:rangeBitsPerChunk(rangeBitsPerChunk), extraStepBitsPerChunk(extraStepBitsPerChunk) numChunksPerHash(numChunksPerHash), numElements(numElements) {
    partialPermutationSize = 1ull << bitsPerChunk;
    bitsPerChunk = rangeBitsPerChunk+extraStepBitsPerChunk;

    partialPermutations = new size_t[partialPermutationSize*numChunksPerHash*numElements];

    std::random_device rd;
    std::mt19937 gen(rd());

    size_t* tmpPermutation = new size_t[numElements];
    for(size_t j=0; j < numElements; j++) {
        tmpPermutation[j] = j;
    }
    // std::shuffle(tmpPermutation, tmpPermutation+ne, gen);
    //optimize this part
    for(size_t i=0; i < numChunksPerHash*numHashes; i++) {
        //reshuffle just the part of the permutation needed
        for(size_t j=0; j < partialPermutationSize; j++) {
            std::uniform_int_distribution<size_t> tdist(j, numElements-1);
            std::swap(tmpPermutation[j], tmpPermutation[tdist(gen)]);
        }

        size_t index = i * bitsPerChunk;
        for(size_t j=0; j < partialPermutationSize; j++) {
            partialPermutations[index + j] = tmpPermutation[j];
        }
    }
    delete tmpPermutation;
}