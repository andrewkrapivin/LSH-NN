#include "LinearLayer.hpp"
#include "Initializers.hpp"
#include <vector>
#include <utility>
#include <random>
#include <chrono>
#include <iostream>
#include <algorithm>

template<typename ET>
class NeuralNetwork {
    private:
        std::mt19937 generator;
        std::vector<size_t> layerSizes;
        std::vector<std::vector<ET>> layerActivations;
        std::vector<std::vector<ET>> weights;
        std::vector<std::vector<ET>> dWeights;
        std::vector<std::vector<ET>> gradWeights;
        std::vector<std::vector<ET>> gradLayers;
        std::vector<std::pair<std::function<void(std::vector<ET>&)>, std::function<void(std::vector<ET>&)>>> activations;
        std::vector<std::function<void(std::vector<ET>&, std::mt19937, size_t, size_t)>> initializers;
        std::pair<std::function<ET(std::vector<ET>&, std::vector<ET>&)>, std::function<void(std::vector<ET>&, std::vector<ET>&)>> costFunc;
        std::vector<std::vector<ET>> trainInput, trainOutput, validateInput, validateOutput;
        void applyDWeights(ET alpha);
        void applyGradWeight(size_t bucketSize);
        ET initDWeightNorm;
    
    public:
        NeuralNetwork(size_t inputSize);
        void setTrainingSet(std::vector<std::vector<ET>> inputs, std::vector<std::vector<ET>> outputs);
        void setValidateSet(std::vector<std::vector<ET>> inputs, std::vector<std::vector<ET>> outputs);
        void setWeightsToRandom();
        void addLayer(size_t outputSize, std::function<void(std::vector<ET>&)> activate, std::function<void(std::vector<ET>&)> dActivate, std::function<void(std::vector<ET>&, std::mt19937, size_t, size_t)> initializer = uniformGlorot<ET>);
        void setCostFunc(std::function<ET(std::vector<ET>&, std::vector<ET>&)> cost, std::function<void(std::vector<ET>&, std::vector<ET>&)> dCost);
        std::vector<ET> forwardPropagateNetwork(std::vector<ET>& input);
        void train(ET alpha, size_t numEpochs, size_t bucketSize);
        void printWeights();
};

template<typename ET>
NeuralNetwork<ET>::NeuralNetwork(size_t inputSize) {
    layerSizes = {inputSize};
    unsigned seed = std::chrono::steady_clock::now().time_since_epoch().count();
    generator = std::mt19937(seed);
    layerActivations.push_back(std::vector<ET>(inputSize));
    gradLayers.push_back(std::vector<ET>(inputSize));
}

template<typename ET>
void NeuralNetwork<ET>::setTrainingSet(std::vector<std::vector<ET>> inputs, std::vector<std::vector<ET>> outputs) {
    trainInput = inputs;
    trainOutput = outputs;
}

template<typename ET>
void NeuralNetwork<ET>::setValidateSet(std::vector<std::vector<ET>> inputs, std::vector<std::vector<ET>> outputs) {
    validateInput = inputs;
    validateOutput = outputs;
}

template<typename ET>
void NeuralNetwork<ET>::setWeightsToRandom() {
    for(size_t i=0; i < weights.size(); i++) {
        // std::normal_distribution<ET> dist(0, 0.001);
        initializers[i](weights[i], generator, layerActivations[i].size(), layerActivations[i+1].size());
        // for(auto& w: vec) {
        //     w = dist(generator);
        //     // std::cout << w << ' ';
        // }
    }
    // std::cout << std::endl;
}

template<typename ET>
void NeuralNetwork<ET>::addLayer(size_t outputSize, std::function<void(std::vector<ET>&)> activate, std::function<void(std::vector<ET>&)> dActivate, std::function<void(std::vector<ET>&, std::mt19937, size_t, size_t)> initializer /*= uniformGlorot<ET>*/) {
    size_t weightSize = (*layerSizes.rbegin() + 1) * outputSize;
    layerSizes.push_back(outputSize);
    weights.push_back(std::vector<ET>(weightSize));
    dWeights.push_back(std::vector<ET>(weightSize));
    gradWeights.push_back(std::vector<ET>(weightSize));
    layerActivations.push_back(std::vector<ET>(outputSize));
    gradLayers.push_back(std::vector<ET>(outputSize));
    activations.push_back(std::make_pair(activate, dActivate));
    initializers.push_back(initializer);
}

template<typename ET>
void NeuralNetwork<ET>::setCostFunc(std::function<ET(std::vector<ET>&, std::vector<ET>&)> cost, std::function<void(std::vector<ET>&, std::vector<ET>&)> dCost) {
    costFunc = {cost, dCost};
}

template<typename ET>
std::vector<ET> NeuralNetwork<ET>::forwardPropagateNetwork(std::vector<ET>& input) {
    // std::cout << layerActivations[0].size() << " " << input.size() << std::endl;
    // assert(layerActivations[0].size() == input.size());
    for(size_t i = 0; i < input.size(); i++) {
        layerActivations[0][i] = input[i];
    }
    for(size_t i = 0; i < layerActivations.size()-1; i++) {
        forwardPropagate(layerActivations[i], layerActivations[i+1], weights[i]);
        activations[i].first(layerActivations[i+1]);
    }
    return layerActivations[layerActivations.size()-1];
}

template<typename ET>
void NeuralNetwork<ET>::applyDWeights(ET alpha) {
    for(size_t i=0; i < weights.size(); i++) {
        ET norm = 0;
        for(size_t j=0; j < weights[i].size(); j++) { //damn normalizing weight gradients worked really really well
            norm += dWeights[i][j] * dWeights[i][j];
        }
        for(size_t j=0; j < weights[i].size(); j++) {
            // dWeights[i][j] /= norm;
            weights[i][j] -= alpha * dWeights[i][j];
            dWeights[i][j] = 0;
        }
    }
}

template<typename ET>
void NeuralNetwork<ET>::applyGradWeight(size_t bucketSize) {
    for(size_t i=0; i < weights.size(); i++) {
        for(size_t j=0; j < weights[i].size(); j++) {
            dWeights[i][j] += gradWeights[i][j] / bucketSize;
        }
    }
}


template<typename ET>
void NeuralNetwork<ET>::train(ET alpha, size_t numEpochs, size_t bucketSize) {
    std::vector<size_t> perm(trainInput.size());
    for(size_t i=0; i < trainInput.size(); i++) {
        perm[i] = i;
    }

    ET error = 0;
        for(size_t i=0; i < validateInput.size(); i++) {
            forwardPropagateNetwork(validateInput[i]);
            // error += costFunc.first(layerActivations[layerActivations.size()-1], validateOutput[i]);
            auto it = std::max_element(layerActivations[layerActivations.size()-1].begin(), layerActivations[layerActivations.size()-1].end());
            auto it2 = std::max_element(validateOutput[i].begin(), validateOutput[i].end());
            error += std::distance(layerActivations[layerActivations.size()-1].begin(), it) != std::distance(validateOutput[i].begin(), it2);
            // if(epoch < 25) continue;
            // for(size_t j=0; j < layerActivations[layerActivations.size()-1].size(); j++) {
            //     std::cout << layerActivations[layerActivations.size()-1][j] << ' ';
            // }
            // std::cout << std::endl;
            // for(size_t j=0; j < validateOutput[i].size(); j++) {
            //     std::cout << validateOutput[i][j] << " ";
            // }
            // std::cout << std::endl;
            // std::cout << error << std::endl;
            // std::cout << std::distance(validateOutput[i].begin(), it2) << ' ' << std::distance(layerActivations[layerActivations.size()-1].begin(), it) << std::endl;
            // char c;
            // std::cin >> c;
        }
        error /= validateInput.size();
        std::cout << "Validation error: " << error << std::endl;

    std::cout << "Epochs: " << numEpochs << ", buckets per epoch: " << ((trainInput.size()+bucketSize-1)/bucketSize) << std::endl;
    for(size_t epoch = 1; epoch <= numEpochs; epoch++) {
        std::cout << "Starting epoch " << epoch << std::endl;
        shuffle(perm.begin(), perm.end(), generator); //obv this bad for cache but whatever
        ET error = 0;
        size_t bucket = 0;
        for(size_t i=0; i < trainInput.size(); i++) {
            if(i!=0 && i%bucketSize == 0) {
                applyDWeights(alpha);
                error /= bucketSize;
                std::cout << "Finished bucket " << (++bucket) << " with an error of " << error << std::endl;
                error = 0;
            }
            size_t j=perm[i];
            forwardPropagateNetwork(trainInput[j]);
            // for(size_t k=0; k < layerActivations[1].size(); k++)
            //     std::cout << layerActivations[1][k] << ' ';
            // for(size_t k=0; k < 10; k++)
            //     std::cout << layerActivations[layerActivations.size()-1][k] << ' ';
            // std::cout << std::endl;
            // std::cout << "REAL: " << std::endl;
            // for(size_t k=0; k < 10; k++)
            //     std::cout << trainOutput[j][k] << ' ';
            // std::cout << std::endl;
            std::copy(layerActivations[layerActivations.size()-1].begin(), layerActivations[layerActivations.size()-1].end(), gradLayers[layerActivations.size()-1].begin());
            error += costFunc.first(gradLayers[layerActivations.size()-1], trainOutput[j]);
            costFunc.second(gradLayers[layerActivations.size()-1], trainOutput[j]);
            // for(size_t k=0; k < 10; k++)
            //     std::cout << layerActivations[layerActivations.size()-1][k] << ' ';
            // std::cout << std::endl;
            for(size_t k=layerActivations.size()-1; k>0; k--) {
                // for(size_t l=0; l < layerActivations[k].size(); l++)
                //     std::cout << layerActivations[k][l] << ' ';
                // std::cout << std::endl;
                activations[k-1].second(layerActivations[k]);
                for(size_t l=0; l < layerActivations[k].size(); l++) { //AWFUL code
                    layerActivations[k][l] *= gradLayers[k][l];
                    gradLayers[k][l] = layerActivations[k][l];
                }
                // for(size_t l=0; l < layerActivations[k].size(); l++)
                //     std::cout << layerActivations[k][l] << ' ';
                // std::cout << std::endl;
                backPropagate(weights[k-1], layerActivations[k-1], gradWeights[k-1], gradLayers[k-1], gradLayers[k]);
                // std::cout << "gweights" << std::endl;
                // if(k==1) break;
                // for(size_t l=0; l < gradWeights[k-1].size(); l++)
                //     std::cout << gradWeights[k-1][l] << ' ';
                // std::cout << std::endl;
            }
            applyGradWeight(bucketSize);
        }
        applyDWeights(alpha);
        error /= bucketSize;
        std::cout << "Finished bucket " << (++bucket) << " with an error of " << error << std::endl;
        // std::cout << "Finished epoch with average error of " << error << std::endl;
        error = 0;
        for(size_t i=0; i < validateInput.size(); i++) {
            forwardPropagateNetwork(validateInput[i]);
            // error += costFunc.first(layerActivations[layerActivations.size()-1], validateOutput[i]);
            auto it = std::max_element(layerActivations[layerActivations.size()-1].begin(), layerActivations[layerActivations.size()-1].end());
            auto it2 = std::max_element(validateOutput[i].begin(), validateOutput[i].end());
            error += std::distance(layerActivations[layerActivations.size()-1].begin(), it) != std::distance(validateOutput[i].begin(), it2);
            // if(i > 0) continue;
            // for(size_t j=0; j < layerActivations[layerActivations.size()-1].size(); j++) {
            //     std::cout << layerActivations[layerActivations.size()-1][j] << ' ';
            // }
            // std::cout << std::endl;
            // for(size_t j=0; j < validateOutput[i].size(); j++) {
            //     std::cout << validateOutput[i][j] << " ";
            // }
            // std::cout << std::endl;
            // std::cout << error << std::endl;
            // std::cout << std::distance(validateOutput[i].begin(), it2) << ' ' << std::distance(layerActivations[layerActivations.size()-1].begin(), it) << std::endl;
        }
        error /= validateInput.size();
        std::cout << "Validation error: " << error << std::endl;
        // char c;
        //     std::cin >> c;
    }
}

template<typename ET>
void NeuralNetwork<ET>::printWeights() {
    for(size_t i=0; i < weights.size(); i++) {
        for(size_t j=0; j < weights[i].size(); j++) {
            std::cout << weights[i][j] << " ";
        }
        std::cout << std::endl;
    }
}