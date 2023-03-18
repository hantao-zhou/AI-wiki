# Intro

Transformers are a type of neural network architecture that is specifically designed for natural language processing (NLP) tasks. The basic building block of a transformer is called the "transformer block," which consists of several layers of multi-headed self-attention and feedforward neural networks.

Here is a brief overview of the structure of a transformer:

1. Input Embedding: The input to a transformer is typically a sequence of tokens (e.g., words or subwords) that make up a sentence or document. Each token is first converted into a dense vector representation, known as an embedding.

2. Encoder: The encoder is a stack of transformer blocks that process the input sequence in a sequential manner. Each transformer block consists of two sub-layers:

   - Multi-Headed Self-Attention: This layer computes self-attention scores between all pairs of tokens in the input sequence. The self-attention scores represent the importance of each token in the context of the other tokens in the sequence.

   - Feedforward Neural Network: This layer applies a feedforward neural network to each token's embedding, using the self-attention scores to weight the contributions of other tokens in the sequence.

3. Decoder: The decoder is another stack of transformer blocks that takes as input the output of the encoder, along with the target sequence (i.e., the sequence that the model is trying to generate). The decoder is similar in structure to the encoder, but includes an additional masked self-attention layer that prevents the model from attending to future tokens in the target sequence.

4. Output Layer: The output layer is a linear layer that takes as input the final hidden states of the decoder, and produces a probability distribution over the possible output tokens (e.g., words or subwords).

Overall, the transformer architecture is designed to capture long-range dependencies and contextual information in natural language sequences, making it a powerful tool for a wide range of NLP tasks, including language modeling, machine translation, and text classification.