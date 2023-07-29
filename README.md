# LSH-NN

The goal of this project was to create a sparse neural network using locality sensitive hashing (LSH) as well as just expiriment with Neural Networks, but ultimately all I really finished with
was a simple neural network implementation before deciding to abandon the project. 
The idea was inspired by the concept of NNUE in stockfish. There, a chessboard is encoded into 768 (or more--I think the real version has 40k neurons by encoding the king position additionally) 
input "neurons---"one neuron per board location of each piece type (6 white+6 black pieces types times 64 squares = 12*64=768, although there are some more neurons to encode stuff like
whether the king can castle). Since at most 32 of these "neurons" are set to 1 in the input (there are 32 pieces at the start of the game), it makes no sense to calculate a full matrix multiply from the input layer to the output.
Instead, just those neurons with nonzero value have their weights propagated to the next layer.
(This is a similar idea to many sparse neural networks, its just my particular exposure to it. Also, here the "sparsification" is *lossless*.)

The hope was to make intermediate layers similarly sparse by using LSH. If we do something like plop the output of a neuron into one of, say, 8 buckets and propagate the value to that bucket, 
then we can lose no information, but also, maybe, give some additional information to the neural network that would be difficult to get on its own. I think this idea is somewhat similar to
a sort of "fine grained" and automated binary decision tree, where, say, a high value for a neuron can create a completely different set of weights than a low value, since the neuron's output
determines which bucket it lands into and thus the set of weights that are propagated later.
Ultimately, I was thinking of bucketing 3 neurons into something like 100 buckets and use a few projections to get, say, 3 neurons back. Additionally, I was hoping to do something genuinely similar
to a binary decision tree, where at some point there are pseudo-layers of just a few neurons, which are then bucketed to choose different sets of weights to continue on with, retaining the previous
layer's output but just using this small pseudo-layer to choose which weights to continue with.
I really liked the idea of this being lossless, as you could (although should you?) preserve the output of a neuron in the bucket---the hope was you could just get "free" additional performance by
having different sets of weights used for different "situations."

The main issue with at least my original approach, which I actually experimented with in a gpu trainer for a chess engine (Koivisto), was that the gradients were awful. This whole bucketing thing
messed with gradients, and it wasn't entirely clear how to save it. It turned out there were some papers that pursued similar ideas, such as [https://arxiv.org/abs/1602.08194](url) and [https://arxiv.org/abs/1903.03129](url),
and I hoped to reimplement what they did and perhaps improve on it. Ultimately, however, I think I just wasn't really convinced by them, and I didn't have high hopes in this project, so I
had fun in implementing a neural network and then just called it a day.
