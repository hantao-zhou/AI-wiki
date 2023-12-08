---
created: 2023-12-06T10:50:18 (UTC +01:00)
tags: []
source: https://en.wikipedia.org/wiki/Sampling_distribution
author: Contributors to Wikimedia projects
---

# Sampling distribution - Wikipedia

> ## Excerpt
> From Wikipedia, the free encyclopedia

---
From Wikipedia, the free encyclopedia

In [statistics](https://en.wikipedia.org/wiki/Statistics "Statistics"), a **sampling distribution** or **finite-sample distribution** is the [probability distribution](https://en.wikipedia.org/wiki/Probability_distribution "Probability distribution") of a given [random-sample](https://en.wikipedia.org/wiki/Random_sample "Random sample")\-based [statistic](https://en.wikipedia.org/wiki/Statistic "Statistic"). If an arbitrarily large number of samples, each involving multiple observations (data points), were separately used in order to compute one value of a statistic (such as, for example, the [sample mean](https://en.wikipedia.org/wiki/Sample_mean "Sample mean") or sample [variance](https://en.wikipedia.org/wiki/Variance "Variance")) for each sample, then the sampling distribution is the probability distribution of the values that the statistic takes on. In many contexts, only one sample is observed, but the sampling distribution can be found theoretically.

Sampling distributions are important in statistics because they provide a major simplification en route to [statistical inference](https://en.wikipedia.org/wiki/Statistical_inference "Statistical inference"). More specifically, they allow analytical considerations to be based on the probability distribution of a statistic, rather than on the [joint probability distribution](https://en.wikipedia.org/wiki/Joint_probability_distribution "Joint probability distribution") of all the individual sample values.

## Introduction\[[edit](https://en.wikipedia.org/w/index.php?title=Sampling_distribution&action=edit&section=1 "Edit section: Introduction")\]

The **sampling distribution** of a statistic is the [distribution](https://en.wikipedia.org/wiki/Probability_distribution "Probability distribution") of that statistic, considered as a [random variable](https://en.wikipedia.org/wiki/Random_variable "Random variable"), when derived from a [random sample](https://en.wikipedia.org/wiki/Random_sample "Random sample") of size ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b). It may be considered as the distribution of the statistic for _all possible samples from the same population_ of a given sample size. The sampling distribution depends on the underlying [distribution](https://en.wikipedia.org/wiki/Probability_distribution "Probability distribution") of the population, the statistic being considered, the sampling procedure employed, and the sample size used. There is often considerable interest in whether the sampling distribution can be approximated by an [asymptotic distribution](https://en.wikipedia.org/wiki/Asymptotic_distribution "Asymptotic distribution"), which corresponds to the limiting case either as the number of random samples of finite size, taken from an infinite population and used to produce the distribution, tends to infinity, or when just one equally-infinite-size "sample" is taken of that same population.

For example, consider a [normal](https://en.wikipedia.org/wiki/Normal_distribution "Normal distribution") population with mean ![\mu ](https://wikimedia.org/api/rest_v1/media/math/render/svg/9fd47b2a39f7a7856952afec1f1db72c67af6161) and variance ![\sigma ^{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/53a5c55e536acf250c1d3e0f754be5692b843ef5). Assume we repeatedly take samples of a given size from this population and calculate the [arithmetic mean](https://en.wikipedia.org/wiki/Arithmetic_mean "Arithmetic mean") ![{\displaystyle {\bar {x}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/466e03e1c9533b4dab1b9949dad393883f385d80) for each sample – this statistic is called the [sample mean](https://en.wikipedia.org/wiki/Sample_mean "Sample mean"). The distribution of these means, or averages, is called the "sampling distribution of the sample mean". This distribution is normal ![{\displaystyle {\mathcal {N}}(\mu ,\sigma ^{2}/n)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/69b51b8ea36868b56ed5c4d9f01536320e1a62dd) (_n_ is the sample size) since the underlying population is normal, although sampling distributions may also often be close to normal even when the population distribution is not (see [central limit theorem](https://en.wikipedia.org/wiki/Central_limit_theorem "Central limit theorem")). An alternative to the sample mean is the sample [median](https://en.wikipedia.org/wiki/Median "Median"). When calculated from the same population, it has a different sampling distribution to that of the mean and is generally not normal (but it may be close for large sample sizes).

The mean of a sample from a population having a normal distribution is an example of a simple statistic taken from one of the simplest [statistical populations](https://en.wikipedia.org/wiki/Statistical_population "Statistical population"). For other statistics and other populations the formulas are more complicated, and often they do not exist in [closed-form](https://en.wikipedia.org/wiki/Closed-form_expression "Closed-form expression"). In such cases the sampling distributions may be approximated through [Monte-Carlo simulations](https://en.wikipedia.org/wiki/Monte-Carlo_simulation "Monte-Carlo simulation"),<sup id="cite_ref-1"><a href="https://en.wikipedia.org/wiki/Sampling_distribution#cite_note-1">[1]</a></sup> [bootstrap](https://en.wikipedia.org/wiki/Bootstrapping_(statistics) "Bootstrapping (statistics)") methods, or [asymptotic distribution](https://en.wikipedia.org/wiki/Asymptotic_distribution "Asymptotic distribution") theory.

## Standard error\[[edit](https://en.wikipedia.org/w/index.php?title=Sampling_distribution&action=edit&section=2 "Edit section: Standard error")\]

The [standard deviation](https://en.wikipedia.org/wiki/Standard_deviation "Standard deviation") of the sampling distribution of a [statistic](https://en.wikipedia.org/wiki/Statistic "Statistic") is referred to as the [standard error](https://en.wikipedia.org/wiki/Standard_error_(statistics) "Standard error (statistics)") of that quantity. For the case where the statistic is the sample mean, and samples are uncorrelated, the standard error is:

![{\displaystyle \sigma _{\bar {x}}={\frac {\sigma }{\sqrt {n}}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b359c1c58d11cc93886a2816b6b1e7cd26088295)

where ![\sigma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/59f59b7c3e6fdb1d0365a494b81fb9a696138c36) is the standard deviation of the population distribution of that quantity and ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b) is the sample size (number of items in the sample).

An important implication of this formula is that the sample size must be quadrupled (multiplied by 4) to achieve half (1/2) the measurement error. When designing statistical studies where cost is a factor, this may have a role in understanding cost–benefit tradeoffs.

For the case where the statistic is the sample total, and samples are uncorrelated, the standard error is:

![{\displaystyle \sigma _{\Sigma x}=\sigma {\sqrt {n}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fbbd76c5fb496739fc18ae7bdbb99ddcba584d28)

where, again, ![\sigma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/59f59b7c3e6fdb1d0365a494b81fb9a696138c36) is the standard deviation of the population distribution of that quantity and ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b) is the sample size (number of items in the sample).

## Examples\[[edit](https://en.wikipedia.org/w/index.php?title=Sampling_distribution&action=edit&section=3 "Edit section: Examples")\]

| Population | Statistic | Sampling distribution |
| --- | --- | --- |
| [Normal](https://en.wikipedia.org/wiki/Normal_distribution "Normal distribution"): ![{\mathcal {N}}(\mu ,\sigma ^{2})](https://wikimedia.org/api/rest_v1/media/math/render/svg/863304aaa42a945f2f07d79facc3d2eebc845ce7) | Sample mean ![{\bar {X}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/90b968141b314f4de17f5e63f18dcdc126352bac) from samples of size _n_ | ![{\bar  X}\sim {\mathcal  {N}}{\Big (}\mu ,\,{\frac  {\sigma ^{2}}{n}}{\Big )}](https://wikimedia.org/api/rest_v1/media/math/render/svg/87f2567b4584549cd05e656135743966de214ce9).
If the standard deviation ![\sigma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/59f59b7c3e6fdb1d0365a494b81fb9a696138c36) is not known, one can consider ![{\displaystyle T=\left({\bar {X}}-\mu \right){\frac {\sqrt {n}}{S}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9302ef4a4e047ebd1a6648e0814ea11d0bce3607), which follows the [Student's t-distribution](https://en.wikipedia.org/wiki/Student%27s_t-distribution "Student's t-distribution") with ![\nu = n - 1](https://wikimedia.org/api/rest_v1/media/math/render/svg/1c0482752c6b429740bcf350965373e6dd62c281) degrees of freedom. Here ![S^{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3b6401d5d0155afb1406770d1eb80badce4e08ce) is the sample variance, and ![T](https://wikimedia.org/api/rest_v1/media/math/render/svg/ec7200acd984a1d3a3d7dc455e262fbe54f7f6e0) is a [pivotal quantity](https://en.wikipedia.org/wiki/Pivotal_quantity "Pivotal quantity"), whose distribution does not depend on ![\sigma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/59f59b7c3e6fdb1d0365a494b81fb9a696138c36).

 |
| [Bernoulli](https://en.wikipedia.org/wiki/Bernoulli_distribution "Bernoulli distribution"): ![\operatorname {Bernoulli}(p)](https://wikimedia.org/api/rest_v1/media/math/render/svg/32ea50f1331617a82d49819c279a9eef067236df) | Sample proportion of "successful trials" ![{\bar {X}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/90b968141b314f4de17f5e63f18dcdc126352bac) | [![n{\bar  X}\sim \operatorname {Binomial}(n,p)](https://wikimedia.org/api/rest_v1/media/math/render/svg/5bda2a905afd6ede46e6ad44a64eb9f2aec34f69)](https://en.wikipedia.org/wiki/Binomial_distribution "Binomial distribution") |
| Two independent normal populations:

![{\mathcal  {N}}(\mu _{1},\sigma _{1}^{2})](https://wikimedia.org/api/rest_v1/media/math/render/svg/8795719e9cee4466b3e37386e83a381ac78079cf)  and  ![{\mathcal  {N}}(\mu _{2},\sigma _{2}^{2})](https://wikimedia.org/api/rest_v1/media/math/render/svg/8654bbb082d2f8a7606182c88854698b10bdc50d)

 | Difference between sample means, ![{\bar  X}_{1}-{\bar  X}_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f24479060efba6f60e8e36736b1a7a297f319c4c) | ![{\bar  X}_{1}-{\bar  X}_{2}\sim {\mathcal  {N}}\!\left(\mu _{1}-\mu _{2},\,{\frac  {\sigma _{1}^{2}}{n_{1}}}+{\frac  {\sigma _{2}^{2}}{n_{2}}}\right)](https://wikimedia.org/api/rest_v1/media/math/render/svg/33b47274042ba18e1fb14bcf3ad7d346d0d936ee) |
| Any absolutely continuous distribution _F_ with density _f_ | [Median](https://en.wikipedia.org/wiki/Median "Median") ![X_{{(k)}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8f97cb491f9e58c6efff98907389ec01e54b4cce) from a sample of size _n_ = 2_k_ − 1, where sample is ordered ![X_{{(1)}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ef9101fe87cc28d8209e90ef0d385aaa1d5ab1f6) to ![X_{{(n)}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d5bea77b85c8efd24d773236a3b171228f0dedc9) | ![f_{{X_{{(k)}}}}(x)={\frac  {(2k-1)!}{(k-1)!^{2}}}f(x){\Big (}F(x)(1-F(x)){\Big )}^{{k-1}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3b69fe4839567783d2e57aa26caa56a9d506ccff) |
| Any distribution with distribution function _F_ | [Maximum](https://en.wikipedia.org/wiki/Maximum "Maximum") ![M=\max \ X_{k}](https://wikimedia.org/api/rest_v1/media/math/render/svg/af1d6c5a1159d4c7b19b5298d9908218ce0dce01) from a random sample of size _n_ | ![F_{M}(x)=P(M\leq x)=\prod P(X_{k}\leq x)=\left(F(x)\right)^{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/41b1840d5a1c3dc624e0e833b1dcb1a420091681) |

## References\[[edit](https://en.wikipedia.org/w/index.php?title=Sampling_distribution&action=edit&section=4 "Edit section: References")\]

1.  **[^](https://en.wikipedia.org/wiki/Sampling_distribution#cite_ref-1 "Jump up")** Mooney, Christopher Z. (1999). [_Monte Carlo simulation_](https://books.google.com/books?id=xQRgh4z_5acC). Thousand Oaks, Calif.: Sage. p. 2. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [9780803959439](https://en.wikipedia.org/wiki/Special:BookSources/9780803959439 "Special:BookSources/9780803959439").

-   Merberg, A. and S.J. Miller (2008). ["The Sample Distribution of the Median"](https://web.williams.edu/Mathematics/sjmiller/public_html/BrownClasses/162/Handouts/MedianThm04.pdf). _Course Notes for Math 162: Mathematical Statistics_, pgs 1–9.

## External links\[[edit](https://en.wikipedia.org/w/index.php?title=Sampling_distribution&action=edit&section=5 "Edit section: External links")\]

-   [_Mathematica_ demonstration showing the sampling distribution of various statistics (e.g. Σ_x_²) for a normal population](http://demonstrations.wolfram.com/StatisticsAssociatedWithNormalSamples/)
