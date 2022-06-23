#include <vector>
#include <cmath>

template<typename ET>
ET quadraticCost(std::vector<ET>& activations, std::vector<ET>& groundTruth) {
    ET cost = 0;
    for(size_t i=0; i < activations.size(); i++) {
        ET x = activations[i] - groundTruth[i];
        cost += x*x;
    }
    return cost;
}

template<typename ET>
void dQuadraticCost(std::vector<ET>& activations, std::vector<ET>& groundTruth) {
    for(size_t i=0; i < activations.size(); i++) {
        activations[i] = 2 * (activations[i] - groundTruth[i]);
    }
}

template<typename ET>
ET logCost(std::vector<ET>& activations, std::vector<ET>& groundTruth) {
    ET cost = 0;
    for(size_t i = 0; i < activations.size(); i++) {
        cost -= groundTruth[i] * log(activations[i]);
    }
    return cost;
}

template<typename ET>
void dLogCost(std::vector<ET>& activations, std::vector<ET>& groundTruth) {
    for(size_t i = 0; i < activations.size(); i++) {
        activations[i] = - groundTruth[i] * (activations[i] == 0 ? 10000 : 1.0/activations[i]);
        if(abs(activations[i]) > 100)
            activations[i] = activations[i] / abs(activations[i]) * 100;
    }
}

template<typename ET>
ET logCost2(std::vector<ET>& activations, std::vector<ET>& groundTruth) {
    ET cost = 0;
    for(size_t i = 0; i < activations.size(); i++) {
        cost += - groundTruth[i] * log(activations[i]) - (1-groundTruth[i]) * log(1-activations[i]);
    }
    return cost;
}

template<typename ET>
void dLogCost2(std::vector<ET>& activations, std::vector<ET>& groundTruth) {
    for(size_t i = 0; i < activations.size(); i++) {
        activations[i] = - groundTruth[i] * (activations[i] == 0 ? 10000 : 1.0/activations[i]) + (1-groundTruth[i]) * (activations[i] == 1 ? 10000 : 1.0/(1-activations[i]));
        if(abs(activations[i]) > 100)
            activations[i] = activations[i] / abs(activations[i]) * 100;
    }
}