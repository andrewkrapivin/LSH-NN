#include "NN/Activations.hpp"
#include "NN/CostFunctions.hpp"
#include "NN/NeuralNetwork.hpp"
#include "NN/Initializers.hpp"
#include "NN/Normalizers.hpp"
#include <iostream>
#include <fstream>
#include <cassert>

using namespace std;

vector<float> readImage(ifstream& rf, size_t sizeImage) {
    vector<float> img(sizeImage);
    unsigned char* c = new unsigned char[sizeImage];
    rf.read((char*)c, sizeImage);
    for(size_t i=0; i < sizeImage; i++) {
        img[i] = 1.0*c[i] / 255.0; //linear scale to between 0 & 1? Perhaps smth else?
    }
    delete c;
    return img;
}

vector<float> numToVec(int num) {
    vector<float> vec(10);
    vec[num] = 1;
    return vec;
}

void readMNIST(vector<vector<float>>& trainInput, vector<vector<float>>& trainOutput, vector<vector<float>>& validateInput, vector<vector<float>>& validateOutput) {
    constexpr double validationSize = 0.10;
    ifstream rfImg("train-images-idx3-ubyte", ios::in | ios::binary);
    int meta[4];
    rfImg.read((char*) meta, 16);
    for(int i=0; i < 4; i++) {
        meta[i] = __builtin_bswap32(meta[i]);
    }
    assert(meta[0] == 2051);
    size_t nImages = meta[1];
    size_t sizeTrain = nImages * (1-validationSize);
    // size_t sizeTrain = 10;
    size_t sizeValidate = nImages*validationSize;
    size_t sizeImage = meta[2]*meta[3];

    for(size_t i = 0; i < sizeTrain; i++) {
        trainInput.push_back(readImage(rfImg, sizeImage));
    }

    for(size_t i=0; i < sizeValidate; i++) {
        validateInput.push_back(readImage(rfImg, sizeImage));
    }
    normalize<float>(trainInput);
    normalize<float>(validateInput);
    rfImg.close();


    ifstream rfLabel("train-labels-idx1-ubyte", ios::in | ios::binary);
    int meta2[2];
    rfLabel.read((char*) meta2, 8);
    for(int i=0; i < 2; i++) {
        meta2[i] = __builtin_bswap32(meta2[i]);
    }
    assert(meta2[0] == 2049);
    unsigned char* labels = new unsigned char[nImages];
    rfLabel.read((char*)labels, nImages);
    for(size_t i = 0; i < nImages; i++) {
        if(i < sizeTrain) {
            trainOutput.push_back(numToVec(labels[i]));
        }
        else {
            validateOutput.push_back(numToVec(labels[i]));
        }
    }
    rfLabel.close();

    delete labels;
}

int main() {
    {vector<float> h{1, 3, -1};
    logistic<float>(h);
    cout << h[0] << ' ' << h[1] << ' ' << h[2] << endl;}
    {vector<float> h{1, 3, -1};
    dLogistic<float>(h);
    cout << h[0] << ' ' << h[1] << ' ' << h[2] << endl;}

    vector<float> l1{1, 2};
    vector<float> l2{0};
    vector<float> weights{1, 2, 1};
    forwardPropagate<float>(l1, l2, weights);

    cout << l2[0] << endl;

    // NeuralNetwork<float> n(2);
    // n.addLayer(2, noActivate<float>, noActivate<float>);
    // n.setWeightsToRandom();
    // n.setCostFunc(quadraticCost<float>, dQuadraticCost<float>);
    // vector<vector<float>> trainInputs{{1, 2}, {2, 3}, {3, 4}, {4, 5}};
    // vector<vector<float>> trainOutputs{{1, 1}, {2, 2}, {3, 3}, {4, 4}};
    // vector<float> l3 = n.forwardPropagateNetwork(l1);
    // cout << l3[0] << " " << l3[1] << ' ' << l3.size() << endl;
    // n.setTrainingSet(trainInputs, trainOutputs);
    // n.setValidateSet(trainInputs, trainOutputs);
    // n.train(0.02, 10000, 2);
    // n.printWeights();

    vector<vector<float>> trainInput;
    vector<vector<float>> trainOutput;
    vector<vector<float>> validateInput;
    vector<vector<float>> validateOutput;
    readMNIST(trainInput, trainOutput, validateInput, validateOutput);

    NeuralNetwork<float> n(784);
    // n.addLayer(1000, tanhActivate<float>, dTanh<float>);
    // n.addLayer(20, ReLU<float>, dReLU<float>);
    // n.addLayer(1000, tanhActivate<float>, dTanh<float>);
    n.addLayer(400, ReLU<float>, dReLU<float>);
    n.addLayer(200, ReLU<float>, dReLU<float>);
    n.addLayer(100, ReLU<float>, dReLU<float>);
    n.addLayer(10, softmax<float>, dSoftmax<float>);
    // n.addLayer(10, logistic<float>, dLogistic<float>);
    n.setWeightsToRandom();
    // n.printWeights();
    // n.setCostFunc(logCost2<float>, dLogCost2<float>);
    n.setCostFunc(quadraticCost<float>, dQuadraticCost<float>);
    n.setTrainingSet(trainInput, trainOutput);
    n.setValidateSet(validateInput, validateOutput);
    n.train(0.01, 10000, 100);


}