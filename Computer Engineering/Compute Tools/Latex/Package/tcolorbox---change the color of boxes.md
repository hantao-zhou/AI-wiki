To change the block color in LaTeX, you can use the "tcolorbox" package and its "colback" option to set the background color of the box. Here's an example of how to modify the block in your code to change the block color:

```
\documentclass{article}
\usepackage{tcolorbox}

\begin{document}

\begin{tcolorbox}[colback=blue!10!white,title=NER与RE算法]
	\begin{itemize}
		\item BiLSTM+CRF: BiLSTM+CRF 是一种用于序列标注的深度学习模型，其结构由两个部分组成：双向长短时记忆网络（Bidirectional Long Short-Term Memory，BiLSTM）和条件随机场（Conditional Random Field，CRF）。
		\item MTB: $\mathcal{L} (\mathcal{D} ) = -\frac{1}{{\left\lvert \mathcal{D} \right\rvert}^2 }\sum\limits_{(r,e_1,e_2)\in \mathcal{D}}\sum\limits_{(r',e'_1,e'_2)\in \mathcal{D}} \delta_{e_1,e'_1} \delta_{e_2,e'_2}\cdot \log p ({l=1| r,r'}) + (1 - \delta_{e_1,e'_1} \delta_{e_2,e'_2}) \cdot \log p ({l=1 | r,r'}) $
	\end{itemize}
\end{tcolorbox}

\end{document}
```

In this example, the "colback" option is set to "blue!10!white", which means the background color of the box will be a light blue. You can modify the color by changing this option to a different color or color combination.