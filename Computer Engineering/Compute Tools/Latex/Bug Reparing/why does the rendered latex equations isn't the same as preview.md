![picture 1](https://i.imgur.com/Qqg4IIx.png)  

this error is caused by the incontinentia usage of mathcal

```tex
$\mathcal{L} (\mathcal{D} ) = -\frac{1}{{\left\lvert \mathcal{D} \right\rvert}^2 }\sum\limits_{(r,e_1,e_2)\in \mathcal{D}}\sum\limits_{(r',e'_1,e'_2)\in \mathcal{D}} \delta_{e_1,e'_1} \delta_{e_2,e'_2} \cdot \log p ({l=1| r,r'}) + (1 - \delta_{e_1,e'_1} \delta_{e_2,e'_2}) \cdot \log p ({l=1 | r,r'}) $

```

the usage of mathcal should only be done with caution, since it will cause most of its internal functions to perform in different ways

![picture 2](https://i.imgur.com/t5zZf8D.png)  
