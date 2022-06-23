#ifndef __NORMALIZER_HEADER
#define __NORMALIZER_HEADER

template<typename ET>
void noNormalize(std::vector<std::vector<ET>>& vals) {
}

template<typename ET>
void normalize(std::vector<std::vector<ET>>& vals) {
    ET avg = 0;
    ET std = 0;
    size_t totSize = 0;
    for(auto& vec: vals) {
        avg += std::accumulate(vec.begin(), vec.end(), (ET) 0);
        totSize += vec.size();
    }
    avg /= totSize;
    for(auto& vec: vals) {
        for(auto& x: vec) {
            x -= avg;
            std += x*x;
        }
    }
    std = sqrt(std/(totSize-1));
    for(auto& vec: vals) {
        for(auto& x: vec) {
            x /= std;
        }
    }
}

#endif