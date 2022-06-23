#include <vector>
#include <algorithm>
#include <cassert>
#include <iostream>

//weights is really a matrix, but we treat it as a new vector. Obviously row-major order
//Assuming weights has an element in the last column for the bias. Should I?
template<typename ET>
void forwardPropagate(std::vector<ET>& pnodes, std::vector<ET>& nnodes, std::vector<ET>& weights) {
    std::fill(nnodes.begin(), nnodes.end(), 0);
    //Just matrix multiply lol
    // std::cout << nnodes.size() << ' ' << pnodes.size() << std::endl;
    for(size_t i = 0, wi = 0; i < nnodes.size(); i++) {
        for(size_t j =0; j < pnodes.size(); j++) {
            nnodes[i] += pnodes[j] * weights[wi++];

        }
        nnodes[i] += weights[wi++]; //Adding the bias term
    }
}

//Propagates the gradient of nnodes to the weight gradient and to the activated pnodes
//pnodes and nnodes still taken to be in forward order, even though we think of the order as backwards, so idk probably think about fixing the names
template<typename ET>
void backPropagate(std::vector<ET>& weights, std::vector<ET>& pnval, std::vector<ET>& wgrad, std::vector<ET>& pngrad, std::vector<ET>& nngrad) {
    //gradient of weights first
    for(size_t i = 0, wi = 0; i < nngrad.size(); i++) {
        for(size_t j = 0; j < pnval.size(); j++) {
            wgrad[wi++] = nngrad[i] * pnval[j];
        }
        wgrad[wi++] = nngrad[i]; //Bias term
    }

    //gradient of pngrad
    std::fill(pngrad.begin(), pngrad.end(), 0);
    for(size_t i = 0, wi = 0; i < nngrad.size(); i++) {
        for(size_t j = 0; j < pngrad.size(); j++) {
            pngrad[j] += nngrad[i] * weights[wi++];
        }
        wi++;
    }
}