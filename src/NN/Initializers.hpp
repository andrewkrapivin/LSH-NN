#ifndef __INITIALIZER_HEADER
#define __INITIALIZER_HEADER

#include <cmath>
#include <random>

template<typename ET>
void uniformGlorot(std::vector<ET>& weights, std::mt19937 generator, size_t inSize, size_t oSize) {
    constexpr ET sqrt6 = sqrt((ET)6.0);
    ET range = sqrt6/sqrt((ET)inSize+oSize);
    std::uniform_real_distribution<ET> dist(-range, range);
    // for(auto& x: weights) {
    //     x = dist(generator);
    // }
    //for now initialize bias to zero
    for(size_t i = 0, wi = 0; i < oSize; i++) {
        for(size_t j = 0; j < inSize; j++) {
            weights[wi++] = dist(generator);
        }
        weights[wi++] = 0;
    }
}

template<typename ET>
void normalGlorot(std::vector<ET>& weights, std::mt19937 generator, size_t inSize, size_t oSize) {
    constexpr ET sqrt2 = sqrt((ET)2.0);
    ET stdev = sqrt2/sqrt((ET)inSize+oSize);
    std::normal_distribution<ET> dist(0, stdev);
    // for(auto& x: weights) {
    //     x = dist(generator);
    // }
    for(size_t i = 0, wi = 0; i < oSize; i++) {
        for(size_t j = 0; j < inSize; j++) {
            weights[wi++] = dist(generator);
        }
        weights[wi++] = 0;
    }
}

#endif