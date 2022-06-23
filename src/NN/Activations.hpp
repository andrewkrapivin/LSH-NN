#include <math.h>
#include <vector>
#include <algorithm>

template<typename ET>
void noActivate(std::vector<ET>& activations) {}

template<typename ET, ET AF(ET)>
void activate(std::vector<ET>& activations) {
    // for(size_t i = 0; i < activations.size(); i++) {
    //     activations[i] = AF(activations[i]);
    // }
    for(auto& x : activations)
        x = AF(x);
}

template<typename ET>
auto ReLU = activate<ET, [](ET a) {return (a > 0) ? a : 0;}>;
template<typename ET>
auto dReLU = activate<ET, [](ET a) -> ET {return (a > 0);}>;

template<typename ET>
auto leakyReLU = activate<ET, [](ET a) {return (a > 0) ? a : a*0.2;}>;
template<typename ET>
auto dLeakyReLU = activate<ET, [](ET a) -> ET {return (a > 0) ? 1.0 : 0.2;}>;

template<typename ET>
ET a1MSq(ET a) {
    return a*(1-a);
}

template<typename ET, void AF(std::vector<ET>&)>
void activateThen1MSq(std::vector<ET>& activations) {
    AF(activations);
    // activate<ET, [](ET a) -> ET {return a*(1-a);}>(activations); //how to do this like this?
    activate<ET, a1MSq>(activations);
}

template<typename ET>
constexpr auto logistic = activate<ET, [](ET a)->ET{return 1.0 / (1.0 + exp(-a));}>;
template<typename ET>
constexpr auto dLogistic = [] (std::vector<ET>& act) -> void{activateThen1MSq<ET, logistic<ET>>(act);};

template<typename ET>
constexpr auto tanhActivate = activate<ET, [](ET a)->ET{return tanh(a);}>;
template<typename ET>
void dTanh (std::vector<ET>& activations) {
    tanhActivate<ET>(activations);
    for(auto& x: activations)
        x = 1 - x*x;
}

template<typename ET>
constexpr auto exponential = activate<ET, [](ET a) -> ET{return exp(a);}>;

template<typename ET>
void softmax(std::vector<ET>& activations) {
    exponential<ET>(activations);
    ET m = 0;
    for(auto x : activations)
        m += x;
    for(auto& x : activations)
        x = x / m;
}

template<typename ET>
auto dSoftmax = activateThen1MSq<ET, softmax<ET>>;