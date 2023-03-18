# different types make different models

## decoder-only

The most well-known decoder-only transformer model is the GPT (Generative Pre-trained Transformer) family of models, which includes GPT-1, GPT-2, and GPT-3. These models use a transformer decoder architecture to generate natural language text, such as text completion, text summarization, and language translation.

GPT models are trained using unsupervised learning on a large corpus of text data, where the model is trained to predict the next word or sequence of words in a given input sequence. This allows GPT to generate human-like language output that is coherent and contextually relevant.

Other examples of decoder-only transformer models include XLNet and T5, both of which use a similar architecture to GPT but with additional mechanisms to handle longer input sequences and better capture the context within those sequences.

Overall, decoder-only transformer models have proven to be highly effective in natural language processing tasks, thanks to their ability to capture the complex dependencies and relationships within natural language text.

## encoder-only

The most well-known encoder-only transformer model is the BERT (Bidirectional Encoder Representations from Transformers) model, which uses a transformer encoder architecture to generate contextualized word embeddings for natural language processing tasks such as text classification, question answering, and language translation.

BERT is trained using unsupervised learning on a large corpus of text data, where the model is trained to predict missing or masked words in the input sequence. This allows BERT to capture the context and meaning of words within a given text sequence.

Other examples of encoder-only transformer models include RoBERTa, DistilBERT, and ALBERT, which are all based on the BERT architecture and have been optimized for various natural language processing tasks. These models have achieved state-of-the-art performance on various benchmarks and are widely used in natural language processing applications.

Overall, encoder-only transformer models have proven to be highly effective in natural language processing tasks, thanks to their ability to capture the context and meaning of words within a given text sequence.

## encoder-decoder

There are several well-known encoder-decoder transformer models, which are widely used in natural language processing tasks such as language translation, text summarization, and question answering. Here are some examples:

1. Transformer - The original transformer model proposed in the paper "Attention Is All You Need" uses a transformer encoder-decoder architecture for machine translation tasks.

2. BART (Bidirectional and Auto-Regressive Transformers) - This model is based on the transformer architecture and is designed for both sequence-to-sequence and auto-regressive text generation tasks.

3. Marian - A fast and efficient neural machine translation model that uses a transformer encoder-decoder architecture and is optimized for low-latency and high throughput.

4. XLM (Cross-lingual Language Model) - A multilingual language model that uses a transformer encoder-decoder architecture and is trained on multiple languages simultaneously.

5. MASS (Masked Sequence to Sequence Pre-training) - A pre-training method for encoder-decoder transformer models that uses masked language modeling and translation modeling simultaneously.

Overall, encoder-decoder transformer models have proven to be highly effective in natural language processing tasks, thanks to their ability to capture the context and meaning of words within a given text sequence and generate coherent and contextually relevant output.