# Introduction

Longformer is a transformer-based neural network architecture designed for natural language processing (NLP) tasks. It was introduced by Beltagy et al. in 2020 in a paper titled "Longformer: The Long-Document Transformer". Longformer is specifically designed to handle long documents of text, which are particularly challenging for traditional transformer models due to their computational limitations. To address this challenge, Longformer uses a combination of sliding window attention and global attention mechanisms.

Sliding window attention allows Longformer to attend to only a portion of the input sequence at a time, rather than the entire sequence, significantly reducing the computational requirements of the model. Meanwhile, global attention is used to attend to the entire input sequence and capture long-range dependencies.

In addition to these attention mechanisms, the Longformer architecture includes innovative features such as sparse attention patterns and reversible layers, which further reduce the computational requirements of the model.

Longformer has achieved state-of-the-art results on several text classification and question answering benchmarks, making it a powerful tool for handling long documents of text in NLP tasks.

# The Difference

Longformer's use of sliding window attention sets it apart from traditional transformer models, which use full attention to attend to all positions in the input sequence. Full attention is computationally expensive and limits the input sequence length that can be effectively processed, making it difficult to handle long documents.

In contrast, Longformer's sliding window attention mechanism divides the input sequence into segments of fixed length and applies self-attention only within each segment. Longformer also employs a global attention mechanism that captures long-range dependencies across segments. By attending only to a portion of the input sequence at a time, Longformer can process long documents efficiently by breaking them into smaller chunks and processing them one at a time.

Longformer's use of sliding window attention enables it to handle input sequences of arbitrary length with a constant amount of computation, making it more efficient and scalable than traditional transformer models. This capability is crucial for many NLP tasks, such as document classification, summarization, and question answering, which involve processing long documents.

Overall, Longformer's innovative use of sliding window attention, along with other features such as sparse attention patterns and reversible layers, makes it a powerful tool for handling long documents in NLP.