---
created: 2023-05-03T15:57:48 (UTC +08:00)
tags: []
source: https://en.wikipedia.org/wiki/Affine_transformation
author: Contributors to Wikimedia projects
---

# Affine transformation - Wikipedia

> ## Excerpt
> 

---
[![](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Fractal_fern_explained.png/200px-Fractal_fern_explained.png)](https://en.wikipedia.org/wiki/File:Fractal_fern_explained.png)

An image of a fern-like [fractal](https://en.wikipedia.org/wiki/Fractal "Fractal") ([Barnsley's fern](https://en.wikipedia.org/wiki/Barnsley_fern "Barnsley fern")) that exhibits affine [self-similarity](https://en.wikipedia.org/wiki/Self-similarity "Self-similarity"). Each of the leaves of the fern is related to each other leaf by an affine transformation. For instance, the red leaf can be transformed into both the dark blue leaf and any of the light blue leaves by a combination of reflection, rotation, scaling, and translation.

In [Euclidean geometry](https://en.wikipedia.org/wiki/Euclidean_geometry "Euclidean geometry"), an **affine transformation** or **affinity** (from the Latin, _affinis_, "connected with") is a [geometric transformation](https://en.wikipedia.org/wiki/Geometric_transformation "Geometric transformation") that preserves [lines](https://en.wikipedia.org/wiki/Line_(geometry) "Line (geometry)") and [parallelism](https://en.wikipedia.org/wiki/Parallelism_(geometry) "Parallelism (geometry)"), but not necessarily [Euclidean distances](https://en.wikipedia.org/wiki/Euclidean_distance "Euclidean distance") and [angles](https://en.wikipedia.org/wiki/Angle "Angle").

More generally, an affine transformation is an [automorphism](https://en.wikipedia.org/wiki/Automorphism "Automorphism") of an [affine space](https://en.wikipedia.org/wiki/Affine_space "Affine space") (Euclidean spaces are specific affine spaces), that is, a [function](https://en.wikipedia.org/wiki/Function_(mathematics) "Function (mathematics)") which [maps](https://en.wikipedia.org/wiki/Map_(mathematics) "Map (mathematics)") an affine space onto itself while preserving both the [dimension](https://en.wikipedia.org/wiki/Dimension "Dimension") of any [affine subspaces](https://en.wikipedia.org/wiki/Affine_subspace "Affine subspace") (meaning that it sends points to points, lines to lines, planes to planes, and so on) and the ratios of the lengths of [parallel](https://en.wikipedia.org/wiki/Parallel_(geometry) "Parallel (geometry)") line segments. Consequently, sets of parallel affine subspaces remain parallel after an affine transformation. An affine transformation does not necessarily preserve angles between lines or distances between points, though it does preserve ratios of distances between points lying on a straight line.

If X is the point set of an affine space, then every affine transformation on X can be represented as the [composition](https://en.wikipedia.org/wiki/Composition_of_functions "Composition of functions") of a [linear transformation](https://en.wikipedia.org/wiki/Linear_transformation "Linear transformation") on X and a [translation](https://en.wikipedia.org/wiki/Translation_(geometry) "Translation (geometry)") of X. Unlike a purely linear transformation, an affine transformation need not preserve the origin of the affine space. Thus, every linear transformation is affine, but not every affine transformation is linear.

Examples of affine transformations include translation, [scaling](https://en.wikipedia.org/wiki/Scaling_(geometry) "Scaling (geometry)"), [homothety](https://en.wikipedia.org/wiki/Homothetic_transformation "Homothetic transformation"), [similarity](https://en.wikipedia.org/wiki/Similarity_transformation_(geometry) "Similarity transformation (geometry)"), [reflection](https://en.wikipedia.org/wiki/Reflection_(mathematics) "Reflection (mathematics)"), [rotation](https://en.wikipedia.org/wiki/Rotation_(mathematics) "Rotation (mathematics)"), [shear mapping](https://en.wikipedia.org/wiki/Shear_mapping "Shear mapping"), and compositions of them in any combination and sequence.

Viewing an affine space as the complement of a [hyperplane at infinity](https://en.wikipedia.org/wiki/Hyperplane_at_infinity "Hyperplane at infinity") of a [projective space](https://en.wikipedia.org/wiki/Projective_space "Projective space"), the affine transformations are the [projective transformations](https://en.wikipedia.org/wiki/Projective_transformations "Projective transformations") of that projective space that leave the hyperplane at infinity [invariant](https://en.wikipedia.org/wiki/Invariant_(mathematics) "Invariant (mathematics)"), restricted to the complement of that hyperplane.

A [generalization](https://en.wikipedia.org/wiki/Generalization "Generalization") of an affine transformation is an **affine map**<sup id="cite_ref-FOOTNOTEBerger198738_1-0"><a href="https://en.wikipedia.org/wiki/Affine_transformation#cite_note-FOOTNOTEBerger198738-1">[1]</a></sup> (or **affine homomorphism** or **affine mapping**) between two (potentially different) affine spaces over the same [field](https://en.wikipedia.org/wiki/Field_(mathematics) "Field (mathematics)") k. Let (_X_, _V_, _k_) and (_Z_, _W_, _k_) be two affine spaces with X and Z the point sets and V and W the respective associated [vector spaces](https://en.wikipedia.org/wiki/Vector_space "Vector space") over the field k. A map _f_: _X_ → _Z_ is an affine map if there exists a [linear map](https://en.wikipedia.org/wiki/Linear_map "Linear map") _m_<sub><i>f</i></sub> : _V_ → _W_ such that _m_<sub><i>f</i></sub> (_x_ − _y_) = _f_ (_x_) − _f_ (_y_) for all x, y in X.<sup id="cite_ref-FOOTNOTESamuel198811_2-0"><a href="https://en.wikipedia.org/wiki/Affine_transformation#cite_note-FOOTNOTESamuel198811-2">[2]</a></sup>

## Definition\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=1 "Edit section: Definition")\]

Let X be an affine space over a [field](https://en.wikipedia.org/wiki/Field_(mathematics) "Field (mathematics)") k, and V be its associated vector space. An **affine transformation** is a [bijection](https://en.wikipedia.org/wiki/Bijection "Bijection") f from X onto itself that is an [affine map](https://en.wikipedia.org/wiki/Affine_space#Affine_map "Affine space"); this means that ![{\displaystyle g(y-x)=f(y)-f(x)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/34ac932fc303c14dd7d57894df29647f3874edff) well defines a [linear map](https://en.wikipedia.org/wiki/Linear_map "Linear map") from V to V; here, as usual, the subtraction of two points denotes the [free vector](https://en.wikipedia.org/wiki/Free_vector "Free vector") from the second one to the first one, and "[well-defined](https://en.wikipedia.org/wiki/Well-defined "Well-defined")" means that ![{\displaystyle y-x=y'-x'}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6ad50b1e38e22662ffde51e9271f8039f1087d87) implies that ![{\displaystyle f(y)-f(x)=f(y')-f(x').}](https://wikimedia.org/api/rest_v1/media/math/render/svg/40689fb7a8ea95912dd19459a81c58f79b22c4f7)

If the dimension of X is at least two, a _semiaffine transformation_ f of X is a [bijection](https://en.wikipedia.org/wiki/Bijection "Bijection") from X onto itself satisfying:<sup id="cite_ref-FOOTNOTESnapperTroyer198965_3-0"><a href="https://en.wikipedia.org/wiki/Affine_transformation#cite_note-FOOTNOTESnapperTroyer198965-3">[3]</a></sup>

1.  For every _d_\-dimensional [affine subspace](https://en.wikipedia.org/wiki/Affine_subspace "Affine subspace") S of X, then _f_ (_S_) is also a _d_\-dimensional affine subspace of X.
2.  If S and T are parallel affine subspaces of X, then _f_ (_S_) and _f_ (_T_) are parallel.

These two conditions are satisfied by affine transformations, and express what is precisely meant by the expression that "f preserves parallelism".

These conditions are not independent as the second follows from the first.<sup id="cite_ref-FOOTNOTESnapperTroyer198966_4-0"><a href="https://en.wikipedia.org/wiki/Affine_transformation#cite_note-FOOTNOTESnapperTroyer198966-4">[4]</a></sup> Furthermore, if the field k has at least three elements, the first condition can be simplified to: f is a [collineation](https://en.wikipedia.org/wiki/Collineation "Collineation"), that is, it maps lines to lines.<sup id="cite_ref-FOOTNOTESnapperTroyer198969_5-0"><a href="https://en.wikipedia.org/wiki/Affine_transformation#cite_note-FOOTNOTESnapperTroyer198969-5">[5]</a></sup>

## Structure\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=2 "Edit section: Structure")\]

By the definition of an affine space, V acts on X, so that, for every pair (_x_, _**v**_) in _X_ × _V_ there is associated a point y in X. We can denote this action by _v_→(_x_) = _y_. Here we use the convention that _v_→ = _**v**_ are two interchangeable notations for an element of V. By fixing a point c in X one can define a function _m_<sub><i>c</i></sub> : _X_ → _V_ by _m_<sub><i>c</i></sub>(_x_) = _cx_→. For any c, this function is one-to-one, and so, has an inverse function _m_<sub><i>c</i></sub><sup>−1</sup> : _V_ → _X_ given by _m_<sub><i>c</i></sub><sup>−1</sup>(_**v**_) = _v_→(_c_). These functions can be used to turn X into a vector space (with respect to the point c) by defining:<sup id="cite_ref-FOOTNOTESnapperTroyer198959_6-0"><a href="https://en.wikipedia.org/wiki/Affine_transformation#cite_note-FOOTNOTESnapperTroyer198959-6">[6]</a></sup>

This vector space has origin c and formally needs to be distinguished from the affine space X, but common practice is to denote it by the same symbol and mention that it is a vector space _after_ an origin has been specified. This identification permits points to be viewed as vectors and vice versa.

For any [linear transformation](https://en.wikipedia.org/wiki/Linear_transformation "Linear transformation") λ of V, we can define the function _L_(_c_, _λ_) : _X_ → _X_ by

![{\displaystyle L(c,\lambda )(x)=m_{c}^{-1}\left(\lambda (m_{c}(x))\right)=c+\lambda ({\vec {cx}}).}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fc95892615d3766610608ec3a6b967c57575265e)

Then _L_(_c_, _λ_) is an affine transformation of X which leaves the point c fixed.<sup id="cite_ref-FOOTNOTESnapperTroyer198976,87_7-0"><a href="https://en.wikipedia.org/wiki/Affine_transformation#cite_note-FOOTNOTESnapperTroyer198976,87-7">[7]</a></sup> It is a linear transformation of X, viewed as a vector space with origin c.

Let σ be any affine transformation of X. Pick a point c in X and consider the translation of X by the vector ![{\displaystyle {\mathbf {w}}={\overrightarrow {c\sigma (c)}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c0827b5663e2d5b4d0605a35dc2af0b47cd026b4), denoted by _T_<sub><b>w</b></sub>. Translations are affine transformations and the composition of affine transformations is an affine transformation. For this choice of c, there exists a unique linear transformation λ of V such that<sup id="cite_ref-FOOTNOTESnapperTroyer198986_8-0"><a href="https://en.wikipedia.org/wiki/Affine_transformation#cite_note-FOOTNOTESnapperTroyer198986-8">[8]</a></sup>

![{\displaystyle \sigma (x)=T_{\mathbf {w}}\left(L(c,\lambda )(x)\right).}](https://wikimedia.org/api/rest_v1/media/math/render/svg/05f5ad268d53a3c94660b18354b26a73dbbca04c)

That is, an arbitrary affine transformation of X is the composition of a linear transformation of X (viewed as a vector space) and a translation of X.

This representation of affine transformations is often taken as the definition of an affine transformation (with the choice of origin being implicit).<sup id="cite_ref-FOOTNOTEWan199319–20_9-0"><a href="https://en.wikipedia.org/wiki/Affine_transformation#cite_note-FOOTNOTEWan199319%E2%80%9320-9">[9]</a></sup><sup id="cite_ref-FOOTNOTEKlein194870_10-0"><a href="https://en.wikipedia.org/wiki/Affine_transformation#cite_note-FOOTNOTEKlein194870-10">[10]</a></sup><sup id="cite_ref-FOOTNOTEBrannanEsplenGray199953_11-0"><a href="https://en.wikipedia.org/wiki/Affine_transformation#cite_note-FOOTNOTEBrannanEsplenGray199953-11">[11]</a></sup>

## Representation\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=3 "Edit section: Representation")\]

As shown above, an affine map is the composition of two functions: a translation and a linear map. Ordinary vector algebra uses [matrix multiplication](https://en.wikipedia.org/wiki/Matrix_multiplication "Matrix multiplication") to represent linear maps, and [vector addition](https://en.wikipedia.org/wiki/Vector_addition "Vector addition") to represent translations. Formally, in the finite-dimensional case, if the linear map is represented as a multiplication by an invertible matrix ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) and the translation as the addition of a vector ![\mathbf {b} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/13ebf4628a1adf07133a6009e4a78bdd990c6eb9), an affine map ![f](https://wikimedia.org/api/rest_v1/media/math/render/svg/132e57acb643253e7810ee9702d9581f159a1c61) acting on a vector ![\mathbf {x} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/32adf004df5eb0a8c7fd8c0b6b7405183c5a5ef2) can be represented as

![{\displaystyle \mathbf {y} =f(\mathbf {x} )=A\mathbf {x} +\mathbf {b} .}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7f9f9b0e476995f383b26d8a619dbdb6cd11a0ab)

### Augmented matrix\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=4 "Edit section: Augmented matrix")\]

[](https://en.wikipedia.org/wiki/File:Affine_transformations.ogv "Play media")0:40

Affine transformations on the 2D plane can be performed by linear transformations in three dimensions. Translation is done by shearing along over the z axis, and rotation is performed around the z axis.

Using an [augmented matrix](https://en.wikipedia.org/wiki/Augmented_matrix "Augmented matrix") and an augmented vector, it is possible to represent both the translation and the linear map using a single [matrix multiplication](https://en.wikipedia.org/wiki/Matrix_multiplication "Matrix multiplication"). The technique requires that all vectors be augmented with a "1" at the end, and all matrices be augmented with an extra row of zeros at the bottom, an extra column—the translation vector—to the right, and a "1" in the lower right corner. If ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is a matrix,

![{\displaystyle {\begin{bmatrix}\mathbf {y} \\1\end{bmatrix}}=\left[{\begin{array}{ccc|c}&A&&\mathbf {b} \\0&\cdots &0&1\end{array}}\right]{\begin{bmatrix}\mathbf {x} \\1\end{bmatrix}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b09421e40cbc57b25a3c80bec8e9af3de6411bc7)

is equivalent to the following

![{\displaystyle \mathbf {y} =A\mathbf {x} +\mathbf {b} .}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0d4da916640ef087f1dd162865adb3e26dab9a76)

The above-mentioned augmented matrix is called an _[affine transformation matrix](https://en.wikipedia.org/wiki/Transformation_matrix#Affine_transformations "Transformation matrix")_. In the general case, when the last row vector is not restricted to be ![{\displaystyle \left[{\begin{array}{ccc|c}0&\cdots &0&1\end{array}}\right]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/88adf2c935d77058a03eab5193223733d4892449), the matrix becomes a _projective transformation matrix_ (as it can also be used to perform [projective transformations](https://en.wikipedia.org/wiki/Projective_transformation "Projective transformation")).

This representation exhibits the [set](https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)") of all [invertible](https://en.wikipedia.org/wiki/Inverse_function "Inverse function") affine transformations as the [semidirect product](https://en.wikipedia.org/wiki/Semidirect_product "Semidirect product") of ![K^{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1d63366b3d00300e06eee81786182062b98775c5) and ![{\displaystyle \operatorname {GL} (n,K)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b2db88d5e706cd229bf26271ee6d2eafec92c5d8). This is a [group](https://en.wikipedia.org/wiki/Group_(mathematics) "Group (mathematics)") under the operation of composition of functions, called the [affine group](https://en.wikipedia.org/wiki/Affine_group "Affine group").

Ordinary matrix-vector multiplication always maps the origin to the origin, and could therefore never represent a translation, in which the origin must necessarily be mapped to some other point. By appending the additional coordinate "1" to every vector, one essentially considers the space to be mapped as a subset of a space with an additional dimension. In that space, the original space occupies the subset in which the additional coordinate is 1. Thus the origin of the original space can be found at ![{\displaystyle (0,0,\dotsc ,0,1)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1a7774ae07ca15e288e011d5f10a94443db1c1ec). A translation within the original space by means of a linear transformation of the higher-dimensional space is then possible (specifically, a shear transformation). The coordinates in the higher-dimensional space are an example of [homogeneous coordinates](https://en.wikipedia.org/wiki/Homogeneous_coordinates "Homogeneous coordinates"). If the original space is [Euclidean](https://en.wikipedia.org/wiki/Euclidean_space "Euclidean space"), the higher dimensional space is a [real projective space](https://en.wikipedia.org/wiki/Real_projective_space "Real projective space").

The advantage of using homogeneous coordinates is that one can [combine](https://en.wikipedia.org/wiki/Function_composition "Function composition") any number of affine transformations into one by multiplying the respective matrices. This property is used extensively in [computer graphics](https://en.wikipedia.org/wiki/Computer_graphics "Computer graphics"), [computer vision](https://en.wikipedia.org/wiki/Computer_vision "Computer vision") and [robotics](https://en.wikipedia.org/wiki/Robotics "Robotics").

#### Example augmented matrix\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=5 "Edit section: Example augmented matrix")\]

If the vectors ![{\displaystyle \mathbf {x} _{1},\dotsc ,\mathbf {x} _{n+1}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7ef40d2afb62f2f33def4469f3eedafc9d8b0b53) are a [basis](https://en.wikipedia.org/wiki/Basis_(linear_algebra) "Basis (linear algebra)") of the domain's projective vector space and if ![{\displaystyle \mathbf {y} _{1},\dotsc ,\mathbf {y} _{n+1}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e0a0662550585fee51fdd03e9e7e80ce683e8fd5) are the corresponding vectors in the [codomain](https://en.wikipedia.org/wiki/Codomain "Codomain") vector space then the augmented matrix ![M](https://wikimedia.org/api/rest_v1/media/math/render/svg/f82cade9898ced02fdd08712e5f0c0151758a0dd) that achieves this affine transformation

![{\displaystyle {\begin{bmatrix}\mathbf {y} \\1\end{bmatrix}}=M{\begin{bmatrix}\mathbf {x} \\1\end{bmatrix}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d41fbf792754198ca9710299b7314e631b8716f6)

is

![{\displaystyle M={\begin{bmatrix}\mathbf {y} _{1}&\cdots &\mathbf {y} _{n+1}\\1&\cdots &1\end{bmatrix}}{\begin{bmatrix}\mathbf {x} _{1}&\cdots &\mathbf {x} _{n+1}\\1&\cdots &1\end{bmatrix}}^{-1}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/27b1bdced28b24769971f2ac80c93c29bc423938)

This formulation works irrespective of whether any of the domain, codomain and image vector spaces have the same number of dimensions.

For example, the affine transformation of a vector plane is uniquely determined from the knowledge of where the three vertices (![{\displaystyle \mathbf {x} _{1},\mathbf {x} _{2},\mathbf {x} _{3}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b37b16f9b15c55cb166919cbf88777a64c0eea4a)) of a non-degenerate triangle are mapped to (![{\displaystyle \mathbf {y} _{1},\mathbf {y} _{2},\mathbf {y} _{3}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bba6bb7b57b6a03b8ea80d2469b1ce862417c197)), regardless of the number of dimensions of the codomain and regardless of whether the triangle is non-degenerate in the codomain.

## Properties\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=6 "Edit section: Properties")\]

### Properties preserved\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=7 "Edit section: Properties preserved")\]

An affine transformation preserves:

1.  [collinearity](https://en.wikipedia.org/wiki/Collinearity "Collinearity") between points: three or more points which lie on the same line (called collinear points) continue to be collinear after the transformation.
2.  [parallelism](https://en.wikipedia.org/wiki/Parallel_(geometry) "Parallel (geometry)"): two or more lines which are parallel, continue to be parallel after the transformation.
3.  [convexity](https://en.wikipedia.org/wiki/Convex_set "Convex set") of sets: a convex set continues to be convex after the transformation. Moreover, the [extreme points](https://en.wikipedia.org/wiki/Extreme_point "Extreme point") of the original set are mapped to the extreme points of the transformed set.<sup id="cite_ref-res_12-0"><a href="https://en.wikipedia.org/wiki/Affine_transformation#cite_note-res-12">[12]</a></sup>
4.  ratios of lengths of parallel line segments: for distinct parallel segments defined by points ![p_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b9b58f22283ca46dd5da309cc34303b06a797783) and ![p_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/43f1b08d7d69712872e051c2b33fdfa9f5d42319), ![p_{3}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2a79626b787857474daa665c953bbc6725e7c345) and ![p_4](https://wikimedia.org/api/rest_v1/media/math/render/svg/cb7dbbe3db85c3b3189ce390bda3363a1f68319e), the ratio of ![{\overrightarrow {p_{1}p_{2}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/033ae99f7900d8c5bd3459a80f9e7f5f6fb07791) and ![{\displaystyle {\overrightarrow {p_{3}p_{4}}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f73e22d4c358589f454341e5296b9010eccc349c) is the same as that of ![{\overrightarrow {f(p_{1})f(p_{2})}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a49164cfaadf80350914df400643af54e7bae911) and ![{\displaystyle {\overrightarrow {f(p_{3})f(p_{4})}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/629f36834beee513ac9d47d2e9c6c189c98191d4).
5.  [barycenters](https://en.wikipedia.org/wiki/Barycenter "Barycenter") of weighted collections of points.

### Groups\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=8 "Edit section: Groups")\]

As an affine transformation is [invertible](https://en.wikipedia.org/wiki/Invertible_function "Invertible function"), the [square matrix](https://en.wikipedia.org/wiki/Square_matrix "Square matrix") ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) appearing in its [matrix representation](https://en.wikipedia.org/wiki/Affine_transformation#Representation) is [invertible](https://en.wikipedia.org/wiki/Invertible_matrix "Invertible matrix"). The matrix representation of the inverse transformation is thus

![{\displaystyle \left[{\begin{array}{ccc|c}&A^{-1}&&-A^{-1}{\vec {b}}\ \\0&\ldots &0&1\end{array}}\right].}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5d016fcc241e75cc9da0e54e1e87d397331f0a96)

The invertible affine transformations (of an affine space onto itself) form the [affine group](https://en.wikipedia.org/wiki/Affine_group "Affine group"), which has the [general linear group](https://en.wikipedia.org/wiki/General_linear_group "General linear group") of degree ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b) as subgroup and is itself a subgroup of the general linear group of degree ![n+1](https://wikimedia.org/api/rest_v1/media/math/render/svg/2a135e65a42f2d73cccbfc4569523996ca0036f1).

The [similarity transformations](https://en.wikipedia.org/wiki/Similarity_transformation_(geometry) "Similarity transformation (geometry)") form the subgroup where ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is a scalar times an [orthogonal matrix](https://en.wikipedia.org/wiki/Orthogonal_matrix "Orthogonal matrix"). For example, if the affine transformation acts on the plane and if the [determinant](https://en.wikipedia.org/wiki/Determinant "Determinant") of ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is 1 or −1 then the transformation is an [equiareal mapping](https://en.wikipedia.org/wiki/Equiareal_map "Equiareal map"). Such transformations form a subgroup called the _equi-affine group_.<sup id="cite_ref-13"><a href="https://en.wikipedia.org/wiki/Affine_transformation#cite_note-13">[13]</a></sup> A transformation that is both equi-affine and a similarity is an [isometry](https://en.wikipedia.org/wiki/Isometry "Isometry") of the plane taken with [Euclidean distance](https://en.wikipedia.org/wiki/Euclidean_distance "Euclidean distance").

Each of these groups has a subgroup of _[orientation](https://en.wikipedia.org/wiki/Orientability "Orientability")\-preserving_ or _positive_ affine transformations: those where the determinant of ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is positive. In the last case this is in 3D the group of [rigid transformations](https://en.wikipedia.org/wiki/Rigid_transformation "Rigid transformation") ([proper rotations](https://en.wikipedia.org/wiki/Improper_rotation "Improper rotation") and pure translations).

If there is a fixed point, we can take that as the origin, and the affine transformation reduces to a linear transformation. This may make it easier to classify and understand the transformation. For example, describing a transformation as a rotation by a certain angle with respect to a certain axis may give a clearer idea of the overall behavior of the transformation than describing it as a combination of a translation and a rotation. However, this depends on application and context.

## Affine maps\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=9 "Edit section: Affine maps")\]

An affine map ![{\displaystyle f\colon {\mathcal {A}}\to {\mathcal {B}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/03d1c11513e304c8397186939bcaab4d134f0733) between two [affine spaces](https://en.wikipedia.org/wiki/Affine_space "Affine space") is a map on the points that acts [linearly](https://en.wikipedia.org/wiki/Linear_transformation "Linear transformation") on the vectors (that is, the vectors between points of the space). In symbols, _![f](https://wikimedia.org/api/rest_v1/media/math/render/svg/132e57acb643253e7810ee9702d9581f159a1c61)_ determines a linear transformation _![\varphi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/33ee699558d09cf9d653f6351f9fda0b2f4aaa3e)_ such that, for any pair of points ![P,Q\in {\mathcal {A}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/50c4784f86e9d3b67ac2576f781d2dc59cdc81d0):

![{\overrightarrow {f(P)~f(Q)}}=\varphi ({\overrightarrow {PQ}})](https://wikimedia.org/api/rest_v1/media/math/render/svg/dd400d1a8f42fe52e5fcad7b701f50fc82b1edff)

or

![f(Q)-f(P)=\varphi (Q-P)](https://wikimedia.org/api/rest_v1/media/math/render/svg/f6b6c71ba7399b5ba9460ab7276b0b15cdd3a0e1).

We can interpret this definition in a few other ways, as follows.

If an origin ![O\in {\mathcal {A}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f1d7f1540e699747e168545ecad33e4dc33e2f4e) is chosen, and ![B](https://wikimedia.org/api/rest_v1/media/math/render/svg/47136aad860d145f75f3eed3022df827cee94d7a) denotes its image ![f(O)\in {\mathcal {B}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/993401f2a814d17b3c4c416aea42cc5191083255), then this means that for any vector ![{\vec {x}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/db2dc6ced9cc3bc7e8b9f2707cbec033f6d3759c):

![{\displaystyle f\colon (O+{\vec {x}})\mapsto (B+\varphi ({\vec {x}}))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/813ef902c2e001414c101fbe41baed472d29930a).

If an origin ![O'\in {\mathcal {B}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/536dc31eea8e1128209e5da79ec89f7fcbd243fb) is also chosen, this can be decomposed as an affine transformation ![{\displaystyle g\colon {\mathcal {A}}\to {\mathcal {B}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8d4d64db72213ed43ac8b9c5d0c7571bcf846305) that sends ![O\mapsto O'](https://wikimedia.org/api/rest_v1/media/math/render/svg/19e6633f6f77f97a0a361072a6e944621560a453), namely

![{\displaystyle g\colon (O+{\vec {x}})\mapsto (O'+\varphi ({\vec {x}}))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5babec3bbeb90659c7966d1872c6d6f1b3df1a58),

followed by the translation by a vector ![{\vec {b}}={\overrightarrow {O'B}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8d6566ead78e196dd5c7668cacc19fc09fec8335).

The conclusion is that, intuitively, ![f](https://wikimedia.org/api/rest_v1/media/math/render/svg/132e57acb643253e7810ee9702d9581f159a1c61) consists of a translation and a linear map.

### Alternative definition\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=10 "Edit section: Alternative definition")\]

Given two [affine spaces](https://en.wikipedia.org/wiki/Affine_space "Affine space") ![{\mathcal {A}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/280ae03440942ab348c2ca9b8db6b56ffa9618f8) and ![{\mathcal {B}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e5622de88a69f68340f8dcb43d0b8bd443ba9e13), over the same field, a function ![{\displaystyle f\colon {\mathcal {A}}\to {\mathcal {B}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/03d1c11513e304c8397186939bcaab4d134f0733) is an affine map [if and only if](https://en.wikipedia.org/wiki/If_and_only_if "If and only if") for every family ![\{(a_{i},\lambda _{i})\}_{i\in I}](https://wikimedia.org/api/rest_v1/media/math/render/svg/45095e5dd1bbc475fe65bb95b662ddaa41d3001f) of weighted points in ![{\mathcal {A}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/280ae03440942ab348c2ca9b8db6b56ffa9618f8) such that

![{\displaystyle \sum _{i\in I}\lambda _{i}=1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8d55e8e1a9219d4c9d089fc0b0e0c66895cf4f45),

we have<sup id="cite_ref-14"><a href="https://en.wikipedia.org/wiki/Affine_transformation#cite_note-14">[14]</a></sup>

![{\displaystyle f\left(\sum _{i\in I}\lambda _{i}a_{i}\right)=\sum _{i\in I}\lambda _{i}f(a_{i})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2e84db29cea34f00c51faacb351715f220ec1ed9).

In other words, ![f](https://wikimedia.org/api/rest_v1/media/math/render/svg/132e57acb643253e7810ee9702d9581f159a1c61) preserves [barycenters](https://en.wikipedia.org/wiki/Barycenter "Barycenter").

## History\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=11 "Edit section: History")\]

The word "affine" as a mathematical term is defined in connection with tangents to curves in [Euler](https://en.wikipedia.org/wiki/Leonhard_Euler "Leonhard Euler")'s 1748 [Introductio in analysin infinitorum](https://en.wikipedia.org/wiki/Introductio_in_analysin_infinitorum "Introductio in analysin infinitorum").<sup id="cite_ref-Euler_15-0"><a href="https://en.wikipedia.org/wiki/Affine_transformation#cite_note-Euler-15">[15]</a></sup> [Felix Klein](https://en.wikipedia.org/wiki/Felix_Klein "Felix Klein") attributes the term "affine transformation" to [Möbius](https://en.wikipedia.org/wiki/August_Ferdinand_M%C3%B6bius "August Ferdinand Möbius") and [Gauss](https://en.wikipedia.org/wiki/Carl_Friedrich_Gauss "Carl Friedrich Gauss").<sup id="cite_ref-FOOTNOTEKlein194870_10-1"><a href="https://en.wikipedia.org/wiki/Affine_transformation#cite_note-FOOTNOTEKlein194870-10">[10]</a></sup>

## Image transformation\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=12 "Edit section: Image transformation")\]

In their applications to [digital image processing](https://en.wikipedia.org/wiki/Digital_image_processing "Digital image processing"), the affine transformations are analogous to printing on a sheet of rubber and stretching the sheet's edges parallel to the plane. This transform relocates pixels requiring intensity interpolation to approximate the value of moved pixels, bicubic [interpolation](https://en.wikipedia.org/wiki/Interpolation "Interpolation") is the standard for image transformations in image processing applications. Affine transformations scale, rotate, translate, mirror and shear images as shown in the following examples:<sup id="cite_ref-16"><a href="https://en.wikipedia.org/wiki/Affine_transformation#cite_note-16">[16]</a></sup>

| Transformation name | Affine matrix | Example |
| --- | --- | --- |
| **[Identity](https://en.wikipedia.org/wiki/Identity_operation "Identity operation")** (transform to original image) | ![{\displaystyle {\begin{bmatrix}1&0&0\\0&1&0\\0&0&1\end{bmatrix}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/917dc504a6780a695d578a7b216036af7e49c506) | [![Checkerboard identity.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Checkerboard_identity.svg/160px-Checkerboard_identity.svg.png)](https://en.wikipedia.org/wiki/File:Checkerboard_identity.svg) |
| **[Translation](https://en.wikipedia.org/wiki/Translation_(geometry) "Translation (geometry)")** | ![{\displaystyle {\begin{bmatrix}1&0&v_{x}>0\\0&1&v_{y}=0\\0&0&1\end{bmatrix}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8ae64b30dad5b7486e59a4f738daa07528717b4f) | [![Checkerboard identity.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Checkerboard_identity.svg/160px-Checkerboard_identity.svg.png)](https://en.wikipedia.org/wiki/File:Checkerboard_identity.svg) |
| **[Reflection](https://en.wikipedia.org/wiki/Reflection_(mathematics) "Reflection (mathematics)")** | ![{\displaystyle {\begin{bmatrix}-1&0&0\\0&1&0\\0&0&1\end{bmatrix}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b6f3c4219a22cd7963c3bed901717c1b34edda32) | [![Checkerboard reflection.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Checkerboard_reflection.svg/160px-Checkerboard_reflection.svg.png)](https://en.wikipedia.org/wiki/File:Checkerboard_reflection.svg) |
| **[Scale](https://en.wikipedia.org/wiki/Scaling_(geometry) "Scaling (geometry)")** | ![{\displaystyle {\begin{bmatrix}c_{x}=2&0&0\\0&c_{y}=1&0\\0&0&1\end{bmatrix}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/75c9c1d42880a29086ffc303cd6aecd0d83c3bb9) | [![Checkerboard scale.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Checkerboard_scale.svg/240px-Checkerboard_scale.svg.png)](https://en.wikipedia.org/wiki/File:Checkerboard_scale.svg) |
| **[Rotate](https://en.wikipedia.org/wiki/Rotate "Rotate")** | ![{\displaystyle {\begin{bmatrix}\cos(\theta )&-\sin(\theta )&0\\\sin(\theta )&\cos(\theta )&0\\0&0&1\end{bmatrix}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8598abfd34f79ee29f98d4168ab2411d47523b81) | [![Checkerboard rotate.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Checkerboard_rotate.svg/160px-Checkerboard_rotate.svg.png)](https://en.wikipedia.org/wiki/File:Checkerboard_rotate.svg)  
where _θ_ = π/6 =30° |
| **[Shear](https://en.wikipedia.org/wiki/Shear_matrix "Shear matrix")** | ![{\displaystyle {\begin{bmatrix}1&c_{x}=0.5&0\\c_{y}=0&1&0\\0&0&1\end{bmatrix}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0063f16565cecf78a3732068701f46390ad2f4a7) | [![Checkerboard shear.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Checkerboard_shear.svg/160px-Checkerboard_shear.svg.png)](https://en.wikipedia.org/wiki/File:Checkerboard_shear.svg) |

The affine transforms are applicable to the registration process where two or more images are aligned (registered). An example of [image registration](https://en.wikipedia.org/wiki/Image_registration "Image registration") is the generation of panoramic images that are the product of multiple images [stitched](https://en.wikipedia.org/wiki/Image_stitching "Image stitching") together.

### Affine warping\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=13 "Edit section: Affine warping")\]

The affine transform preserves parallel lines. However, the stretching and shearing transformations warp shapes, as the following example shows:

This is an example of image warping. However, the affine transformations do not facilitate projection onto a curved surface or [radial distortions](https://en.wikipedia.org/wiki/Distortion_(optics) "Distortion (optics)").

## In the plane\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=14 "Edit section: In the plane")\]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Central_dilation.svg/300px-Central_dilation.svg.png)](https://en.wikipedia.org/wiki/File:Central_dilation.svg)

A central dilation. The triangles A1B1Z, A1C1Z, and B1C1Z get mapped to A2B2Z, A2C2Z, and B2C2Z, respectively.

Affine transformations in two real dimensions include:

-   pure translations,
-   [scaling](https://en.wikipedia.org/wiki/Scaling_(geometry) "Scaling (geometry)") in a given direction, with respect to a line in another direction (not necessarily perpendicular), combined with translation that is not purely in the direction of scaling; taking "scaling" in a generalized sense it includes the cases that the scale factor is zero ([projection](https://en.wikipedia.org/wiki/Projection_(linear_algebra) "Projection (linear algebra)")) or negative; the latter includes [reflection](https://en.wikipedia.org/wiki/Reflection_(mathematics) "Reflection (mathematics)"), and combined with translation it includes [glide reflection](https://en.wikipedia.org/wiki/Glide_reflection "Glide reflection"),
-   [rotation](https://en.wikipedia.org/wiki/Rotation "Rotation") combined with a [homothety](https://en.wikipedia.org/wiki/Homothetic_transformation "Homothetic transformation") and a translation,
-   [shear mapping](https://en.wikipedia.org/wiki/Shear_mapping "Shear mapping") combined with a homothety and a translation, or
-   [squeeze mapping](https://en.wikipedia.org/wiki/Squeeze_mapping "Squeeze mapping") combined with a homothety and a translation.

To visualise the general affine transformation of the [Euclidean plane](https://en.wikipedia.org/wiki/Euclidean_plane "Euclidean plane"), take labelled [parallelograms](https://en.wikipedia.org/wiki/Parallelogram "Parallelogram") _ABCD_ and _A′B′C′D′_. Whatever the choices of points, there is an affine transformation _T_ of the plane taking _A_ to _A′_, and each vertex similarly. Supposing we exclude the degenerate case where _ABCD_ has zero [area](https://en.wikipedia.org/wiki/Area "Area"), there is a unique such affine transformation _T_. Drawing out a whole grid of parallelograms based on _ABCD_, the image _T_(_P_) of any point _P_ is determined by noting that _T_(_A_) = _A′_, _T_ applied to the line segment _AB_ is _A′B′_, _T_ applied to the line segment _AC_ is _A′C′_, and _T_ respects scalar multiples of vectors based at _A_. \[If _A_, _E_, _F_ are collinear then the ratio length(_AF_)/length(_AE_) is equal to length(_A_′_F_′)/length(_A_′_E_′).\] Geometrically _T_ transforms the grid based on _ABCD_ to that based in _A′B′C′D′_.

Affine transformations do not respect lengths or angles; they multiply area by a constant factor

area of _A′B′C′D′_ / area of _ABCD_.

A given _T_ may either be _direct_ (respect orientation), or _indirect_ (reverse orientation), and this may be determined by its effect on _signed_ areas (as defined, for example, by the [cross product](https://en.wikipedia.org/wiki/Cross_product "Cross product") of vectors).

## Examples\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=15 "Edit section: Examples")\]

### Over the real numbers\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=16 "Edit section: Over the real numbers")\]

The functions ![{\displaystyle f\colon \mathbb {R} \to \mathbb {R} ,\;f(x)=mx+c}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9cf963b0d2c9dd3aca026246848335a38ec463cb) with ![m](https://wikimedia.org/api/rest_v1/media/math/render/svg/0a07d98bb302f3856cbabc47b2b9016692e3f7bc) and ![c](https://wikimedia.org/api/rest_v1/media/math/render/svg/86a67b81c2de995bd608d5b2df50cd8cd7d92455) in ![\mathbb {R} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/786849c765da7a84dbc3cce43e96aad58a5868dc) and ![m\ne 0](https://wikimedia.org/api/rest_v1/media/math/render/svg/ce13986af1c35b143f1e634e932044b2cb83a92e), are precisely the affine transformations of the [real line](https://en.wikipedia.org/wiki/Real_line "Real line").

### In plane geometry\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=17 "Edit section: In plane geometry")\]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Geometric_affine_transformation_example.png/220px-Geometric_affine_transformation_example.png)](https://en.wikipedia.org/wiki/File:Geometric_affine_transformation_example.png)

A simple affine transformation on the real plane

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/2D_affine_transformation_matrix.svg/250px-2D_affine_transformation_matrix.svg.png)](https://en.wikipedia.org/wiki/File:2D_affine_transformation_matrix.svg)

Effect of applying various 2D affine transformation matrices on a unit square. Note that the reflection matrices are special cases of the scaling matrix.

In ![\mathbb {R} ^{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e150115ab9f63023215109595b76686a1ff890fd), the transformation shown at left is accomplished using the map given by:

![{\begin{bmatrix}x\\y\end{bmatrix}}\mapsto {\begin{bmatrix}0&1\\2&1\end{bmatrix}}{\begin{bmatrix}x\\y\end{bmatrix}}+{\begin{bmatrix}-100\\-100\end{bmatrix}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b3ce2bf90beae1d5b7cd808ff9e4fadae8e72136)

Transforming the three corner points of the original triangle (in red) gives three new points which form the new triangle (in blue). This transformation skews and translates the original triangle.

In fact, all triangles are related to one another by affine transformations. This is also true for all parallelograms, but not for all quadrilaterals.

## See also\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=18 "Edit section: See also")\]

-   [Anamorphosis](https://en.wikipedia.org/wiki/Anamorphosis "Anamorphosis") – artistic applications of affine transformations
-   [Affine geometry](https://en.wikipedia.org/wiki/Affine_geometry "Affine geometry")
-   [3D projection](https://en.wikipedia.org/wiki/3D_projection "3D projection")
-   [Homography](https://en.wikipedia.org/wiki/Homography "Homography")
-   [Flat (geometry)](https://en.wikipedia.org/wiki/Flat_(geometry) "Flat (geometry)")
-   [Bent function](https://en.wikipedia.org/wiki/Bent_function "Bent function")

## Notes\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=19 "Edit section: Notes")\]

1.  **[^](https://en.wikipedia.org/wiki/Affine_transformation#cite_ref-FOOTNOTEBerger198738_1-0 "Jump up")** [Berger 1987](https://en.wikipedia.org/wiki/Affine_transformation#CITEREFBerger1987), p. 38.
2.  **[^](https://en.wikipedia.org/wiki/Affine_transformation#cite_ref-FOOTNOTESamuel198811_2-0 "Jump up")** [Samuel 1988](https://en.wikipedia.org/wiki/Affine_transformation#CITEREFSamuel1988), p. 11.
3.  **[^](https://en.wikipedia.org/wiki/Affine_transformation#cite_ref-FOOTNOTESnapperTroyer198965_3-0 "Jump up")** [Snapper & Troyer 1989](https://en.wikipedia.org/wiki/Affine_transformation#CITEREFSnapperTroyer1989), p. 65.
4.  **[^](https://en.wikipedia.org/wiki/Affine_transformation#cite_ref-FOOTNOTESnapperTroyer198966_4-0 "Jump up")** [Snapper & Troyer 1989](https://en.wikipedia.org/wiki/Affine_transformation#CITEREFSnapperTroyer1989), p. 66.
5.  **[^](https://en.wikipedia.org/wiki/Affine_transformation#cite_ref-FOOTNOTESnapperTroyer198969_5-0 "Jump up")** [Snapper & Troyer 1989](https://en.wikipedia.org/wiki/Affine_transformation#CITEREFSnapperTroyer1989), p. 69.
6.  **[^](https://en.wikipedia.org/wiki/Affine_transformation#cite_ref-FOOTNOTESnapperTroyer198959_6-0 "Jump up")** [Snapper & Troyer 1989](https://en.wikipedia.org/wiki/Affine_transformation#CITEREFSnapperTroyer1989), p. 59.
7.  **[^](https://en.wikipedia.org/wiki/Affine_transformation#cite_ref-FOOTNOTESnapperTroyer198976,87_7-0 "Jump up")** [Snapper & Troyer 1989](https://en.wikipedia.org/wiki/Affine_transformation#CITEREFSnapperTroyer1989), p. 76,87.
8.  **[^](https://en.wikipedia.org/wiki/Affine_transformation#cite_ref-FOOTNOTESnapperTroyer198986_8-0 "Jump up")** [Snapper & Troyer 1989](https://en.wikipedia.org/wiki/Affine_transformation#CITEREFSnapperTroyer1989), p. 86.
9.  **[^](https://en.wikipedia.org/wiki/Affine_transformation#cite_ref-FOOTNOTEWan199319%E2%80%9320_9-0 "Jump up")** [Wan 1993](https://en.wikipedia.org/wiki/Affine_transformation#CITEREFWan1993), pp. 19–20.
10.  ^ [Jump up to: <sup><i><b>a</b></i></sup>](https://en.wikipedia.org/wiki/Affine_transformation#cite_ref-FOOTNOTEKlein194870_10-0) [<sup><i><b>b</b></i></sup>](https://en.wikipedia.org/wiki/Affine_transformation#cite_ref-FOOTNOTEKlein194870_10-1) [Klein 1948](https://en.wikipedia.org/wiki/Affine_transformation#CITEREFKlein1948), p. 70.
11.  **[^](https://en.wikipedia.org/wiki/Affine_transformation#cite_ref-FOOTNOTEBrannanEsplenGray199953_11-0 "Jump up")** [Brannan, Esplen & Gray 1999](https://en.wikipedia.org/wiki/Affine_transformation#CITEREFBrannanEsplenGray1999), p. 53.
12.  **[^](https://en.wikipedia.org/wiki/Affine_transformation#cite_ref-res_12-0 "Jump up")** Reinhard Schultz. ["Affine transformations and convexity"](http://math.ucr.edu/~res/math145A-2014/affine+convex.pdf) (PDF). Retrieved 27 February 2017.
13.  **[^](https://en.wikipedia.org/wiki/Affine_transformation#cite_ref-13 "Jump up")** [Oswald Veblen](https://en.wikipedia.org/wiki/Oswald_Veblen "Oswald Veblen") (1918) _Projective Geometry_, volume 2, pp. 105–7.
14.  **[^](https://en.wikipedia.org/wiki/Affine_transformation#cite_ref-14 "Jump up")** Schneider, Philip K.; Eberly, David H. (2003). [_Geometric Tools for Computer Graphics_](https://books.google.com/books?id=3Q7HGBx1uLIC&pg=PA98). Morgan Kaufmann. p. 98. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-1-55860-594-7](https://en.wikipedia.org/wiki/Special:BookSources/978-1-55860-594-7 "Special:BookSources/978-1-55860-594-7").
15.  **[^](https://en.wikipedia.org/wiki/Affine_transformation#cite_ref-Euler_15-0 "Jump up")** Euler, Leonhard (1748). [_Introductio in analysin infinitorum_](https://gallica.bnf.fr/ark:/12148/bpt6k33529/f240.image) (in Latin). Vol. II. Book II, sect. XVIII, art. 442
16.  **[^](https://en.wikipedia.org/wiki/Affine_transformation#cite_ref-16 "Jump up")** Gonzalez, Rafael (2008). _'Digital Image Processing, 3rd'_. Pearson Hall. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [9780131687288](https://en.wikipedia.org/wiki/Special:BookSources/9780131687288 "Special:BookSources/9780131687288").

## References\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=20 "Edit section: References")\]

-   [Berger, Marcel](https://en.wikipedia.org/wiki/Marcel_Berger "Marcel Berger") (1987), _Geometry I_, Berlin: Springer, [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [3-540-11658-3](https://en.wikipedia.org/wiki/Special:BookSources/3-540-11658-3 "Special:BookSources/3-540-11658-3")
-   Brannan, David A.; Esplen, Matthew F.; Gray, Jeremy J. (1999), _Geometry_, Cambridge University Press, [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-0-521-59787-6](https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-59787-6 "Special:BookSources/978-0-521-59787-6")
-   [Nomizu, Katsumi](https://en.wikipedia.org/wiki/Katsumi_Nomizu "Katsumi Nomizu"); Sasaki, S. (1994), [_Affine Differential Geometry_](https://archive.org/details/affinedifferenti0000nomi) (New ed.), Cambridge University Press, [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-0-521-44177-3](https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-44177-3 "Special:BookSources/978-0-521-44177-3")
-   Klein, Felix (1948) \[1939\], _Elementary Mathematics from an Advanced Standpoint: Geometry_, Dover
-   Samuel, Pierre (1988), [_Projective Geometry_](https://archive.org/details/projectivegeomet0000samu), Springer-Verlag, [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [0-387-96752-4](https://en.wikipedia.org/wiki/Special:BookSources/0-387-96752-4 "Special:BookSources/0-387-96752-4")
-   Sharpe, R. W. (1997). _Differential Geometry: Cartan's Generalization of Klein's Erlangen Program_. New York: Springer. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [0-387-94732-9](https://en.wikipedia.org/wiki/Special:BookSources/0-387-94732-9 "Special:BookSources/0-387-94732-9").
-   Snapper, Ernst; Troyer, Robert J. (1989) \[1971\], _Metric Affine Geometry_, Dover, [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-0-486-66108-7](https://en.wikipedia.org/wiki/Special:BookSources/978-0-486-66108-7 "Special:BookSources/978-0-486-66108-7")
-   Wan, Zhe-xian (1993), _Geometry of Classical Groups over Finite Fields_, Chartwell-Bratt, [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [0-86238-326-9](https://en.wikipedia.org/wiki/Special:BookSources/0-86238-326-9 "Special:BookSources/0-86238-326-9")

## External links\[[edit](https://en.wikipedia.org/w/index.php?title=Affine_transformation&action=edit&section=21 "Edit section: External links")\]

-   [![](https://upload.wikimedia.org/wikipedia/en/thumb/4/4a/Commons-logo.svg/12px-Commons-logo.svg.png)](https://en.wikipedia.org/wiki/File:Commons-logo.svg) Media related to [Affine transformation](https://commons.wikimedia.org/wiki/Category:Affine_transformation "commons:Category:Affine transformation") at Wikimedia Commons
-   ["Affine transformation"](https://www.encyclopediaofmath.org/index.php?title=Affine_transformation), _[Encyclopedia of Mathematics](https://en.wikipedia.org/wiki/Encyclopedia_of_Mathematics "Encyclopedia of Mathematics")_, [EMS Press](https://en.wikipedia.org/wiki/European_Mathematical_Society "European Mathematical Society"), 2001 \[1994\]
-   [Geometric Operations: Affine Transform](http://homepages.inf.ed.ac.uk/rbf/HIPR2/affine.htm), R. Fisher, S. Perkins, A. Walker and E. Wolfart.
-   [Weisstein, Eric W.](https://en.wikipedia.org/wiki/Eric_W._Weisstein "Eric W. Weisstein") ["Affine Transformation"](https://mathworld.wolfram.com/AffineTransformation.html). _[MathWorld](https://en.wikipedia.org/wiki/MathWorld "MathWorld")_.
-   _[Affine Transform](http://demonstrations.wolfram.com/AffineTransform/)_ by Bernard Vuilleumier, [Wolfram Demonstrations Project](https://en.wikipedia.org/wiki/Wolfram_Demonstrations_Project "Wolfram Demonstrations Project").
-   [Affine Transformation with MATLAB](http://www.mathworks.com/discovery/affine-transformation.html)
