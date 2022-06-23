// #include "Hash.hpp"

class DWTA { //TODO: come up with better names
    size_t* partialPermutations;
    size_t rangeBitsPerChunk, extraStepBitsPerChunk, numChunksPerHash, numHashes;
    size_t bitsPerChunk;
    size_t partialPermutationSize;
    size_t numElements;
    size_t randomSeed;

    public:
        DWTA(size_t rangeBitsPerChunk, size_t extraStepBitsPerChunk, size_t numChunksPerHash, size_t numHashes, size_t numElements); //K = 2^bpc * nch, L = nh (2^bpc since we have the top number of elements we choose be 2^k, where the element chosen can be represented using k bits). 
        //Honestly why not just keep L, but split up K so wanna rename L too lol
        template<typename DataType>
        size_t* getHashes(vector<DataType>& v); //v is assumed to have the size equal to numElements!
        //Probably template it. For now assuming that a hash can fit in a size_t (which it should, I think, as otherwise probability would be like zero).
        //So that means that bitsPerChunk*numChunksPerHash must be at most 64, although for reasonable hash table size probably should be maybe like 24
        //Although if K = 6 or so then that only leaves like 4 bits for rangeBitsPerChunk+extraStepBitsPerChunk which seems too small
        //Although in the code from the LSH paper, they don't store how many extra attempts you took to get to a nonzero hash, which is sus, but maybe works for reasonably fixed levels of sparsity?
        //Thus if extraStepBitsPerChunk is set to 0 then we don't store anything and ignore it.

        //Also implement sparsified version: 
}

//REmember implement the hash by just randommly selecting which node from the nonempty is then chosen and using poisson distribution to estimate how long it took to get there
template<typename DataType, DataType minSize>
size_t* DWTA::getHashes(vector<DataType>& v) {
    size_t* hashes = new size_t[numHashes];
    // size_t* tmpChunks = new size_t[numChunksPerHash];
    map<size_t, size_t> nonEmptyChunks;
    for(size_t i=0; i < numHashes; i++) {
        hashes[i] = 0;
        nonEmptyChunks.clear();
        for(size_t j=0; j < numChunksPerHash; j++) {
            size_t index = i * j * bitsPerChunk;
            DataType maxVal = minSize;
            for(size_t k=0; k < partialPermutationSize; k++) {
                if(v[partialPermutations[k]] > maxVal) {
                    // tmpChunks[j] = partialPermutations[k];
                    maxVal = v[partialPermutations[k]];
                    nonEmptyChunks[j] = partialPermutations[k];
                }
            }
        }

        for(size_t j=0; j < numChunksPerHash; j++) {
            if(nonEmptyChunks.count(j) > 0) {
                hashes[i] += nonEmptyChunks[j] * (1ull << (j * bitsPerChunk));
            }
            else {
                
            }
        }
    }
}