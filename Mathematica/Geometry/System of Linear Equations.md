# wiki

In [mathematics](https://en.wikipedia.org/wiki/Mathematics "Mathematics"), a **system of linear equations** (or **linear system**) is a collection of one or more [linear equations](https://en.wikipedia.org/wiki/Linear_equation "Linear equation") involving the same [variables](https://en.wikipedia.org/wiki/Variable_(math) "Variable (math)").<sup id="cite_ref-1"><a href="https://en.wikipedia.org/wiki/System_of_linear_equations#cite_note-1">[1]</a></sup><sup id="cite_ref-2"><a href="https://en.wikipedia.org/wiki/System_of_linear_equations#cite_note-2">[2]</a></sup><sup id="cite_ref-3"><a href="https://en.wikipedia.org/wiki/System_of_linear_equations#cite_note-3">[3]</a></sup><sup id="cite_ref-4"><a href="https://en.wikipedia.org/wiki/System_of_linear_equations#cite_note-4">[4]</a></sup><sup id="cite_ref-5"><a href="https://en.wikipedia.org/wiki/System_of_linear_equations#cite_note-5">[5]</a></sup>

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Secretsharing_3-point.svg/220px-Secretsharing_3-point.svg.png)](https://en.wikipedia.org/wiki/File:Secretsharing_3-point.svg)

A linear system in three variables determines a collection of [planes](https://en.wikipedia.org/wiki/Plane_(mathematics) "Plane (mathematics)") The intersection point is the solution.

For example,

![{\displaystyle {\begin{cases}3x+2y-z=1\\2x-2y+4z=-2\\-x+{\frac {1}{2}}y-z=0\end{cases}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/12e6e6e9dcf7b5ef5a7ddb6451332c7a248457a2)

is a system of three equations in the three variables _x_, _y_, _z_. A **solution** to a linear system is an assignment of values to the variables such that all the equations are simultaneously satisfied. A [solution](https://en.wikipedia.org/wiki/Equation_solving "Equation solving") to the system above is given by the [ordered triple](https://en.wikipedia.org/wiki/Tuple "Tuple")

![{\displaystyle (x,y,z)=(1,-2,-2),}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f186a34f432b0e63ec690152e8c106290c9d9b6c)

since it makes all three equations valid. The word "system" indicates that the equations are to be considered collectively, rather than individually.

In mathematics, the theory of linear systems is the basis and a fundamental part of [linear algebra](https://en.wikipedia.org/wiki/Linear_algebra "Linear algebra"), a subject which is used in most parts of modern mathematics. Computational [algorithms](https://en.wikipedia.org/wiki/Algorithm "Algorithm") for finding the solutions are an important part of [numerical linear algebra](https://en.wikipedia.org/wiki/Numerical_linear_algebra "Numerical linear algebra"), and play a prominent role in [engineering](https://en.wikipedia.org/wiki/Engineering "Engineering"), [physics](https://en.wikipedia.org/wiki/Physics "Physics"), [chemistry](https://en.wikipedia.org/wiki/Chemistry "Chemistry"), [computer science](https://en.wikipedia.org/wiki/Computer_science "Computer science"), and [economics](https://en.wikipedia.org/wiki/Economics "Economics"). A [system of non-linear equations](https://en.wikipedia.org/wiki/Nonlinear_system "Nonlinear system") can often be [approximated](https://en.wikipedia.org/wiki/Approximation "Approximation") by a linear system (see [linearization](https://en.wikipedia.org/wiki/Linearization "Linearization")), a helpful technique when making a [mathematical model](https://en.wikipedia.org/wiki/Mathematical_model "Mathematical model") or [computer simulation](https://en.wikipedia.org/wiki/Computer_simulation "Computer simulation") of a relatively [complex system](https://en.wikipedia.org/wiki/Complex_system "Complex system").

Very often, and in this article, the [coefficients](https://en.wikipedia.org/wiki/Coefficient "Coefficient") of the equations are [real](https://en.wikipedia.org/wiki/Real_number "Real number") or [complex numbers](https://en.wikipedia.org/wiki/Complex_number "Complex number") and the solutions are searched in the same set of numbers, but the theory and the algorithms apply for coefficients and solutions in any [field](https://en.wikipedia.org/wiki/Field_(mathematics) "Field (mathematics)"). For solutions in an [integral domain](https://en.wikipedia.org/wiki/Integral_domain "Integral domain") like the [ring](https://en.wikipedia.org/wiki/Ring_(mathematics) "Ring (mathematics)") of the [integers](https://en.wikipedia.org/wiki/Integer "Integer"), or in other [algebraic structures](https://en.wikipedia.org/wiki/Algebraic_structure "Algebraic structure"), other theories have been developed, see [Linear equation over a ring](https://en.wikipedia.org/wiki/Linear_equation_over_a_ring "Linear equation over a ring"). [Integer linear programming](https://en.wikipedia.org/wiki/Integer_linear_programming "Integer linear programming") is a collection of methods for finding the "best" integer solution (when there are many). [Gröbner basis](https://en.wikipedia.org/wiki/Gr%C3%B6bner_basis "Gröbner basis") theory provides algorithms when coefficients and unknowns are [polynomials](https://en.wikipedia.org/wiki/Polynomial "Polynomial"). Also [tropical geometry](https://en.wikipedia.org/wiki/Tropical_geometry "Tropical geometry") is an example of linear algebra in a more exotic structure.

## Elementary examples\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=1 "Edit section: Elementary examples")\]

### Trivial example\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=2 "Edit section: Trivial example")\]

The system of one equation in one unknown

![{\displaystyle 2x=4}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3fd1d3360b1e037f634df50bf0f1405acdf94c44)

has the solution

![x=2.](https://wikimedia.org/api/rest_v1/media/math/render/svg/4ba0d302dee657b740f239df7d781071f6c247b5)

However, a linear system is commonly considered as having at least two equations.

### Simple nontrivial example\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=3 "Edit section: Simple nontrivial example")\]

The simplest kind of nontrivial linear system involves two equations and two variables:

![{\begin{alignedat}{5}2x&&\;+\;&&3y&&\;=\;&&6&\\4x&&\;+\;&&9y&&\;=\;&&15&.\end{alignedat}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/31362c58c90d896569ebe7aee86ab835edd1fd87)

One method for solving such a system is as follows. First, solve the top equation for ![x](https://wikimedia.org/api/rest_v1/media/math/render/svg/87f9e315fd7e2ba406057a97300593c4802b53e4) in terms of ![y](https://wikimedia.org/api/rest_v1/media/math/render/svg/b8a6208ec717213d4317e666f1ae872e00620a0d):

![x=3-{\frac {3}{2}}y.](https://wikimedia.org/api/rest_v1/media/math/render/svg/e5b071ac862c00ea9e6e705b862dc6da685964c4)

Now [substitute](https://en.wikipedia.org/wiki/Substitution_(algebra) "Substitution (algebra)") this expression for _x_ into the bottom equation:

![4\left(3-{\frac {3}{2}}y\right)+9y=15.](https://wikimedia.org/api/rest_v1/media/math/render/svg/a3bb7a73e135625032208ef76d118c8c4e9aad4e)

This results in a single equation involving only the variable ![y](https://wikimedia.org/api/rest_v1/media/math/render/svg/b8a6208ec717213d4317e666f1ae872e00620a0d). Solving gives ![y=1](https://wikimedia.org/api/rest_v1/media/math/render/svg/10f53b404b1fdd041a589f1f2425e45a2edba110), and substituting this back into the equation for ![x](https://wikimedia.org/api/rest_v1/media/math/render/svg/87f9e315fd7e2ba406057a97300593c4802b53e4) yields ![{\displaystyle x={\frac {3}{2}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/486a5db1c61dfd01f6e5822c0ea77a97a56d2368). This method generalizes to systems with additional variables (see "elimination of variables" below, or the article on [elementary algebra](https://en.wikipedia.org/wiki/Elementary_algebra "Elementary algebra").)

## General form\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=4 "Edit section: General form")\]

A general system of _m_ linear equations with _n_ [unknowns](https://en.wikipedia.org/wiki/Variable_(mathematics) "Variable (mathematics)") and [coefficients](https://en.wikipedia.org/wiki/Coefficient "Coefficient") can be written as

![{\displaystyle {\begin{cases}a_{11}x_{1}+a_{12}x_{2}+\dots +a_{1n}x_{n}+b_{1}=0\\a_{21}x_{1}+a_{22}x_{2}+\dots +a_{2n}x_{n}+b_{2}=0\\\vdots \\a_{m1}x_{1}+a_{m2}x_{2}+\dots +a_{mn}x_{n}+b_{m}=0,\end{cases}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e7a0c9a41438274e3640d5f6a214c8c006cbd002)

where ![{\displaystyle x_{1},x_{2},\dots ,x_{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/75c2d357bc1b965979bf171b5ba3bac0f68961c2) are the unknowns, ![{\displaystyle a_{11},a_{12},\dots ,a_{mn}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0bac3ab39e0a2b1d9d1f47af5af9e08701d3cb55) are the coefficients of the system, and ![{\displaystyle b_{1},b_{2},\dots ,b_{m}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/65445659bf1ac1f6a0b94857747e5256cbc4b9b2) are the constant terms.

Often the coefficients and unknowns are [real](https://en.wikipedia.org/wiki/Real_number "Real number") or [complex numbers](https://en.wikipedia.org/wiki/Complex_number "Complex number"), but [integers](https://en.wikipedia.org/wiki/Integer "Integer") and [rational numbers](https://en.wikipedia.org/wiki/Rational_number "Rational number") are also seen, as are polynomials and elements of an abstract [algebraic structure](https://en.wikipedia.org/wiki/Algebraic_structure "Algebraic structure").

### Vector equation\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=5 "Edit section: Vector equation")\]

One extremely helpful view is that each unknown is a weight for a [column vector](https://en.wikipedia.org/wiki/Column_vector "Column vector") in a [linear combination](https://en.wikipedia.org/wiki/Linear_combination "Linear combination").

![{\displaystyle x_{1}{\begin{bmatrix}a_{11}\\a_{21}\\\vdots \\a_{m1}\end{bmatrix}}+x_{2}{\begin{bmatrix}a_{12}\\a_{22}\\\vdots \\a_{m2}\end{bmatrix}}+\dots +x_{n}{\begin{bmatrix}a_{1n}\\a_{2n}\\\vdots \\a_{mn}\end{bmatrix}}+{\begin{bmatrix}b_{1}\\b_{2}\\\vdots \\b_{m}\end{bmatrix}}=0}](https://wikimedia.org/api/rest_v1/media/math/render/svg/da7d450f34c796462f9a8c68222a09ffd035a13e)

This allows all the language and theory of _[vector spaces](https://en.wikipedia.org/wiki/Vector_space "Vector space")_ (or more generally, _[modules](https://en.wikipedia.org/wiki/Module_(mathematics) "Module (mathematics)")_) to be brought to bear. For example, the collection of all possible linear combinations of the vectors on the left-hand side is called their _[span](https://en.wikipedia.org/wiki/Span_(linear_algebra) "Span (linear algebra)")_, and the equations have a solution just when the right-hand vector is within that span. If every vector within that span has exactly one expression as a linear combination of the given left-hand vectors, then any solution is unique. In any event, the span has a _[basis](https://en.wikipedia.org/wiki/Basis_(linear_algebra) "Basis (linear algebra)")_ of [linearly independent](https://en.wikipedia.org/wiki/Linearly_independent "Linearly independent") vectors that do guarantee exactly one expression; and the number of vectors in that basis (its _[dimension](https://en.wikipedia.org/wiki/Dimension_(linear_algebra) "Dimension (linear algebra)")_) cannot be larger than _m_ or _n_, but it can be smaller. This is important because if we have _m_ independent vectors a solution is guaranteed regardless of the right-hand side, and otherwise not guaranteed.

### Matrix equation\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=6 "Edit section: Matrix equation")\]

The vector equation is equivalent to a [matrix](https://en.wikipedia.org/wiki/Matrix_(mathematics) "Matrix (mathematics)") equation of the form

![{\displaystyle A\mathbf {x} =\mathbf {b} }](https://wikimedia.org/api/rest_v1/media/math/render/svg/45d894430af69e29d6dda5aacbf4bb19336226a0)

where _A_ is an _m_×_n_ matrix, **x** is a [column vector](https://en.wikipedia.org/wiki/Column_vector "Column vector") with _n_ entries, and **b** is a column vector with _m_ entries.

![{\displaystyle A={\begin{bmatrix}a_{11}&a_{12}&\cdots &a_{1n}\\a_{21}&a_{22}&\cdots &a_{2n}\\\vdots &\vdots &\ddots &\vdots \\a_{m1}&a_{m2}&\cdots &a_{mn}\end{bmatrix}},\quad \mathbf {x} ={\begin{bmatrix}x_{1}\\x_{2}\\\vdots \\x_{n}\end{bmatrix}},\quad \mathbf {b} ={\begin{bmatrix}b_{1}\\b_{2}\\\vdots \\b_{m}\end{bmatrix}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/85b8cb94702eb575b664969060eb077ab8ac37a6)

The number of vectors in a basis for the span is now expressed as the _[rank](https://en.wikipedia.org/wiki/Rank_(linear_algebra) "Rank (linear algebra)")_ of the matrix.

## Solution set\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=7 "Edit section: Solution set")\]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Intersecting_Lines.svg/220px-Intersecting_Lines.svg.png)](https://en.wikipedia.org/wiki/File:Intersecting_Lines.svg)

The solution set for the equations _x_ − _y_ = −1 and 3_x_ + _y_ = 9 is the single point (2, 3).

A **solution** of a linear system is an assignment of values to the variables _x_<sub>1</sub>, _x_<sub>2</sub>, ..., _x<sub>n</sub>_ such that each of the equations is satisfied. The [set](https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)") of all possible solutions is called the **[solution set](https://en.wikipedia.org/wiki/Solution_set "Solution set")**.<sup id="cite_ref-6"><a href="https://en.wikipedia.org/wiki/System_of_linear_equations#cite_note-6">[6]</a></sup>

A linear system may behave in any one of three possible ways:

1.  The system has _infinitely many solutions_.
2.  The system has a single _unique solution_.
3.  The system has _no solution_.

### Geometric interpretation\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=8 "Edit section: Geometric interpretation")\]

For a system involving two variables (_x_ and _y_), each linear equation determines a [line](https://en.wikipedia.org/wiki/Line_(mathematics) "Line (mathematics)") on the _xy_\-[plane](https://en.wikipedia.org/wiki/Cartesian_coordinate_system "Cartesian coordinate system"). Because a solution to a linear system must satisfy all of the equations, the solution set is the [intersection](https://en.wikipedia.org/wiki/Intersection_(set_theory) "Intersection (set theory)") of these lines, and is hence either a line, a single point, or the [empty set](https://en.wikipedia.org/wiki/Empty_set "Empty set").

For three variables, each linear equation determines a [plane](https://en.wikipedia.org/wiki/Plane_(mathematics) "Plane (mathematics)") in [three-dimensional space](https://en.wikipedia.org/wiki/Three-dimensional_space "Three-dimensional space"), and the solution set is the intersection of these planes. Thus the solution set may be a plane, a line, a single point, or the empty set. For example, as three parallel planes do not have a common point, the solution set of their equations is empty; the solution set of the equations of three planes intersecting at a point is single point; if three planes pass through two points, their equations have at least two common solutions; in fact the solution set is infinite and consists in all the line passing through these points.<sup id="cite_ref-Linear_Matrices_7-0"><a href="https://en.wikipedia.org/wiki/System_of_linear_equations#cite_note-Linear_Matrices-7">[7]</a></sup>

For _n_ variables, each linear equation determines a [hyperplane](https://en.wikipedia.org/wiki/Hyperplane "Hyperplane") in [_n_\-dimensional space](https://en.wikipedia.org/wiki/N-dimensional_space "N-dimensional space"). The solution set is the intersection of these hyperplanes, and is a [flat](https://en.wikipedia.org/wiki/Flat_(geometry) "Flat (geometry)"), which may have any dimension lower than _n_.

### General behavior\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=9 "Edit section: General behavior")\]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Intersecting_Planes_2.svg/220px-Intersecting_Planes_2.svg.png)](https://en.wikipedia.org/wiki/File:Intersecting_Planes_2.svg)

The solution set for two equations in three variables is, in general, a line.

In general, the behavior of a linear system is determined by the relationship between the number of equations and the number of unknowns. Here, "in general" means that a different behavior may occur for specific values of the coefficients of the equations.

-   In general, a system with fewer equations than unknowns has infinitely many solutions, but it may have no solution. Such a system is known as an [underdetermined system](https://en.wikipedia.org/wiki/Underdetermined_system "Underdetermined system").
-   In general, a system with the same number of equations and unknowns has a single unique solution.
-   In general, a system with more equations than unknowns has no solution. Such a system is also known as an [overdetermined system](https://en.wikipedia.org/wiki/Overdetermined_system "Overdetermined system").

In the first case, the [dimension](https://en.wikipedia.org/wiki/Dimension "Dimension") of the solution set is, in general, equal to _n_ − _m_, where _n_ is the number of variables and _m_ is the number of equations.

The following pictures illustrate this trichotomy in the case of two variables:

The first system has infinitely many solutions, namely all of the points on the blue line. The second system has a single unique solution, namely the intersection of the two lines. The third system has no solutions, since the three lines share no common point.

It must be kept in mind that the pictures above show only the most common case (the general case). It is possible for a system of two equations and two unknowns to have no solution (if the two lines are parallel), or for a system of three equations and two unknowns to be solvable (if the three lines intersect at a single point).

A system of linear equations behave differently from the general case if the equations are _[linearly dependent](https://en.wikipedia.org/wiki/Linear_independence "Linear independence")_, or if it is _[inconsistent](https://en.wikipedia.org/wiki/System_of_linear_equations#Consistency)_ and has no more equations than unknowns.

## Properties\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=10 "Edit section: Properties")\]

### Independence\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=11 "Edit section: Independence")\]

The equations of a linear system are **independent** if none of the equations can be derived algebraically from the others. When the equations are independent, each equation contains new information about the variables, and removing any of the equations increases the size of the solution set. For linear equations, logical independence is the same as [linear independence](https://en.wikipedia.org/wiki/Linear_independence "Linear independence").

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Three_Intersecting_Lines.svg/220px-Three_Intersecting_Lines.svg.png)](https://en.wikipedia.org/wiki/File:Three_Intersecting_Lines.svg)

The equations _x_ − 2_y_ = −1, 3_x_ + 5_y_ = 8, and 4_x_ + 3_y_ = 7 are linearly dependent.

For example, the equations

![3x+2y=6\;\;\;\;{\text{and}}\;\;\;\;6x+4y=12](https://wikimedia.org/api/rest_v1/media/math/render/svg/34514061fa890d7aeb05db114013d4631de46df1)

are not independent — they are the same equation when scaled by a factor of two, and they would produce identical graphs. This is an example of equivalence in a system of linear equations.

For a more complicated example, the equations

![{\begin{alignedat}{5}x&&\;-\;&&2y&&\;=\;&&-1&\\3x&&\;+\;&&5y&&\;=\;&&8&\\4x&&\;+\;&&3y&&\;=\;&&7&\end{alignedat}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3d26b40c273dff9c610f2f279460dff990412e49)

are not independent, because the third equation is the sum of the other two. Indeed, any one of these equations can be derived from the other two, and any one of the equations can be removed without affecting the solution set. The graphs of these equations are three lines that intersect at a single point.

### Consistency\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=12 "Edit section: Consistency")\]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Parallel_Lines.svg/220px-Parallel_Lines.svg.png)](https://en.wikipedia.org/wiki/File:Parallel_Lines.svg)

The equations 3_x_ + 2_y_ = 6 and 3_x_ + 2_y_ = 12 are inconsistent.

A linear system is **inconsistent** if it has no solution, and otherwise it is said to be **consistent**. When the system is inconsistent, it is possible to derive a [contradiction](https://en.wikipedia.org/wiki/Contradiction "Contradiction") from the equations, that may always be rewritten as the statement 0 = 1.

For example, the equations

![3x+2y=6\;\;\;\;{\text{and}}\;\;\;\;3x+2y=12](https://wikimedia.org/api/rest_v1/media/math/render/svg/806109fad15e1c5fa55d1ac652fa7f833652df11)

are inconsistent. In fact, by subtracting the first equation from the second one and multiplying both sides of the result by 1/6, we get 0 = 1. The graphs of these equations on the _xy_\-plane are a pair of [parallel](https://en.wikipedia.org/wiki/Parallel_(geometry) "Parallel (geometry)") lines.

It is possible for three linear equations to be inconsistent, even though any two of them are consistent together. For example, the equations

![{\begin{alignedat}{7}x&&\;+\;&&y&&\;=\;&&1&\\2x&&\;+\;&&y&&\;=\;&&1&\\3x&&\;+\;&&2y&&\;=\;&&3&\end{alignedat}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9387db0d00da512472d4814bb75481d44c09413e)

are inconsistent. Adding the first two equations together gives 3_x_ + 2_y_ = 2, which can be subtracted from the third equation to yield 0 = 1. Any two of these equations have a common solution. The same phenomenon can occur for any number of equations.

In general, inconsistencies occur if the left-hand sides of the equations in a system are linearly dependent, and the constant terms do not satisfy the dependence relation. A system of equations whose left-hand sides are linearly independent is always consistent.

Putting it another way, according to the [Rouché–Capelli theorem](https://en.wikipedia.org/wiki/Rouch%C3%A9%E2%80%93Capelli_theorem "Rouché–Capelli theorem"), any system of equations (overdetermined or otherwise) is inconsistent if the [rank](https://en.wikipedia.org/wiki/Rank_(linear_algebra) "Rank (linear algebra)") of the [augmented matrix](https://en.wikipedia.org/wiki/Augmented_matrix "Augmented matrix") is greater than the rank of the [coefficient matrix](https://en.wikipedia.org/wiki/Coefficient_matrix "Coefficient matrix"). If, on the other hand, the ranks of these two matrices are equal, the system must have at least one solution. The solution is unique if and only if the rank equals the number of variables. Otherwise the general solution has _k_ free parameters where _k_ is the difference between the number of variables and the rank; hence in such a case there are an infinitude of solutions. The rank of a system of equations (that is, the rank of the augmented matrix) can never be higher than \[the number of variables\] + 1, which means that a system with any number of equations can always be reduced to a system that has a number of [independent equations](https://en.wikipedia.org/wiki/Independent_equation "Independent equation") that is at most equal to \[the number of variables\] + 1.

### Equivalence\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=13 "Edit section: Equivalence")\]

Two linear systems using the same set of variables are **equivalent** if each of the equations in the second system can be derived algebraically from the equations in the first system, and vice versa. Two systems are equivalent if either both are inconsistent or each equation of each of them is a linear combination of the equations of the other one. It follows that two linear systems are equivalent if and only if they have the same solution set.

## Solving a linear system\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=14 "Edit section: Solving a linear system")\]

There are several [algorithms](https://en.wikipedia.org/wiki/Algorithm "Algorithm") for [solving](https://en.wikipedia.org/wiki/Equation_solving "Equation solving") a system of linear equations.

### Describing the solution\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=15 "Edit section: Describing the solution")\]

When the solution set is finite, it is reduced to a single element. In this case, the unique solution is described by a sequence of equations whose left-hand sides are the names of the unknowns and right-hand sides are the corresponding values, for example ![(x=3,\;y=-2,\;z=6)](https://wikimedia.org/api/rest_v1/media/math/render/svg/25a9f11f417cff000b5540ed42ea1df8da77a628). When an order on the unknowns has been fixed, for example the [alphabetical order](https://en.wikipedia.org/wiki/Alphabetical_order "Alphabetical order") the solution may be described as a [vector](https://en.wikipedia.org/wiki/Vector_space "Vector space") of values, like ![(3,\,-2,\,6)](https://wikimedia.org/api/rest_v1/media/math/render/svg/bd044b71a38662829ab5e27ea15f154219466aa9) for the previous example.

To describe a set with an infinite number of solutions, typically some of the variables are designated as **free** (or **independent**, or as **parameters**), meaning that they are allowed to take any value, while the remaining variables are **dependent** on the values of the free variables.

For example, consider the following system:

![{\begin{alignedat}{7}x&&\;+\;&&3y&&\;-\;&&2z&&\;=\;&&5&\\3x&&\;+\;&&5y&&\;+\;&&6z&&\;=\;&&7&\end{alignedat}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2df5186f258524f2c10228557ba350aca8b473b8)

The solution set to this system can be described by the following equations:

![x=-7z-1\;\;\;\;{\text{and}}\;\;\;\;y=3z+2{\text{.}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/02f87078e85c17cfa1bfa549c6f30b0b8464b462)

Here _z_ is the free variable, while _x_ and _y_ are dependent on _z_. Any point in the solution set can be obtained by first choosing a value for _z_, and then computing the corresponding values for _x_ and _y_.

Each free variable gives the solution space one [degree of freedom](https://en.wikipedia.org/wiki/Degree_of_freedom "Degree of freedom"), the number of which is equal to the [dimension](https://en.wikipedia.org/wiki/Dimension "Dimension") of the solution set. For example, the solution set for the above equation is a line, since a point in the solution set can be chosen by specifying the value of the parameter _z_. An infinite solution of higher order may describe a plane, or higher-dimensional set.

Different choices for the free variables may lead to different descriptions of the same solution set. For example, the solution to the above equations can alternatively be described as follows:

![y=-{\frac {3}{7}}x+{\frac {11}{7}}\;\;\;\;{\text{and}}\;\;\;\;z=-{\frac {1}{7}}x-{\frac {1}{7}}{\text{.}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9c4744e8c8a4cd5a82f44c4bc9bdf1797cf5fcde)

Here _x_ is the free variable, and _y_ and _z_ are dependent.

### Elimination of variables\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=16 "Edit section: Elimination of variables")\]

The simplest method for solving a system of linear equations is to repeatedly eliminate variables. This method can be described as follows:

1.  In the first equation, solve for one of the variables in terms of the others.
2.  Substitute this expression into the remaining equations. This yields a system of equations with one fewer equation and unknown.
3.  Repeat steps 1 and 2 until the system is reduced to a single linear equation.
4.  Solve this equation, and then back-substitute until the entire solution is found.

For example, consider the following system:

![{\displaystyle {\begin{cases}x+3y-2z=5\\3x+5y+6z=7\\2x+4y+3z=8\end{cases}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ae643afaed8d321baea42c52dddc7fe2b511667a)

Solving the first equation for _x_ gives _x_ = 5 + 2_z_ - 3_y_, and plugging this into the second and third equation yields

![{\displaystyle {\begin{cases}y=3z+2\\y={\tfrac {7}{2}}z+1\end{cases}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e569e09e816d25c905cdcb7ced94c40fd7681ffd)

Since the LHS of both of these equations equal _y_, equating the RHS of the equations. We now have:

![{\displaystyle {\begin{aligned}3z+2={\tfrac {7}{2}}z+1\\\Rightarrow z=2\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8eef2d42dfc6ebaf53c0a81e4431dbed4504ccb4)

Substituting _z_ = 2 into the second or third equation gives _y_ = 8, and the values of _y_ and _z_ into the first equation yields _x_ = −15. Therefore, the solution set is the ordered triple ![{\displaystyle (x,y,z)=(-15,8,2)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ea0a8632950c312433528cd6bc4c7c2d273b2d98).

### Row reduction\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=17 "Edit section: Row reduction")\]

In **row reduction** (also known as **Gaussian elimination**), the linear system is represented as an [augmented matrix](https://en.wikipedia.org/wiki/Augmented_matrix "Augmented matrix"):

![\left[{\begin{array}{rrr|r}1&3&-2&5\\3&5&6&7\\2&4&3&8\end{array}}\right]{\text{.}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6d99c79eb45b325d779be9693c613d9aec07b6d4)

This matrix is then modified using [elementary row operations](https://en.wikipedia.org/wiki/Elementary_row_operations "Elementary row operations") until it reaches [reduced row echelon form](https://en.wikipedia.org/wiki/Reduced_row_echelon_form "Reduced row echelon form"). There are three types of elementary row operations:

**Type 1**: Swap the positions of two rows.

**Type 2**: Multiply a row by a nonzero [scalar](https://en.wikipedia.org/wiki/Scalar_(mathematics) "Scalar (mathematics)").

**Type 3**: Add to one row a scalar multiple of another.

Because these operations are reversible, the augmented matrix produced always represents a linear system that is equivalent to the original.

There are several specific algorithms to row-reduce an augmented matrix, the simplest of which are [Gaussian elimination](https://en.wikipedia.org/wiki/Gaussian_elimination "Gaussian elimination") and [Gauss–Jordan elimination](https://en.wikipedia.org/wiki/Gauss%E2%80%93Jordan_elimination "Gauss–Jordan elimination"). The following computation shows Gauss–Jordan elimination applied to the matrix above:

![{\begin{aligned}\left[{\begin{array}{rrr|r}1&3&-2&5\\3&5&6&7\\2&4&3&8\end{array}}\right]&\sim \left[{\begin{array}{rrr|r}1&3&-2&5\\0&-4&12&-8\\2&4&3&8\end{array}}\right]\sim \left[{\begin{array}{rrr|r}1&3&-2&5\\0&-4&12&-8\\0&-2&7&-2\end{array}}\right]\sim \left[{\begin{array}{rrr|r}1&3&-2&5\\0&1&-3&2\\0&-2&7&-2\end{array}}\right]\\&\sim \left[{\begin{array}{rrr|r}1&3&-2&5\\0&1&-3&2\\0&0&1&2\end{array}}\right]\sim \left[{\begin{array}{rrr|r}1&3&-2&5\\0&1&0&8\\0&0&1&2\end{array}}\right]\sim \left[{\begin{array}{rrr|r}1&3&0&9\\0&1&0&8\\0&0&1&2\end{array}}\right]\sim \left[{\begin{array}{rrr|r}1&0&0&-15\\0&1&0&8\\0&0&1&2\end{array}}\right].\end{aligned}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5f6367f306a7947555dd25f9b3b29a5903efdabb)

The last matrix is in reduced row echelon form, and represents the system _x_ = −15, _y_ = 8, _z_ = 2. A comparison with the example in the previous section on the algebraic elimination of variables shows that these two methods are in fact the same; the difference lies in how the computations are written down.

### Cramer's rule\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=18 "Edit section: Cramer's rule")\]

**Cramer's rule** is an explicit formula for the solution of a system of linear equations, with each variable given by a quotient of two [determinants](https://en.wikipedia.org/wiki/Determinant "Determinant"). For example, the solution to the system

![{\begin{alignedat}{7}x&\;+&\;3y&\;-&\;2z&\;=&\;5\\3x&\;+&\;5y&\;+&\;6z&\;=&\;7\\2x&\;+&\;4y&\;+&\;3z&\;=&\;8\end{alignedat}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/89119b2cb41304a8c1a1f087667f76e738f8d01e)

is given by

![{\displaystyle x={\frac {\,{\begin{vmatrix}5&3&-2\\7&5&6\\8&4&3\end{vmatrix}}\,}{\,{\begin{vmatrix}1&3&-2\\3&5&6\\2&4&3\end{vmatrix}}\,}},\;\;\;\;y={\frac {\,{\begin{vmatrix}1&5&-2\\3&7&6\\2&8&3\end{vmatrix}}\,}{\,{\begin{vmatrix}1&3&-2\\3&5&6\\2&4&3\end{vmatrix}}\,}},\;\;\;\;z={\frac {\,{\begin{vmatrix}1&3&5\\3&5&7\\2&4&8\end{vmatrix}}\,}{\,{\begin{vmatrix}1&3&-2\\3&5&6\\2&4&3\end{vmatrix}}\,}}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/eccc2f94350f08e89687a114d42682eb3bde8453)

For each variable, the denominator is the determinant of the [matrix of coefficients](https://en.wikipedia.org/wiki/Matrix_of_coefficients "Matrix of coefficients"), while the numerator is the determinant of a matrix in which one column has been replaced by the vector of constant terms.

Though Cramer's rule is important theoretically, it has little practical value for large matrices, since the computation of large determinants is somewhat cumbersome. (Indeed, large determinants are most easily computed using row reduction.) Further, Cramer's rule has very poor numerical properties, making it unsuitable for solving even small systems reliably, unless the operations are performed in rational arithmetic with unbounded precision.<sup>[<i><a href="https://en.wikipedia.org/wiki/Wikipedia:Citation_needed" title="Wikipedia:Citation needed"><span title="This claim needs references to reliable sources. (March 2017)">citation needed</span></a></i>]</sup>

### Matrix solution\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=19 "Edit section: Matrix solution")\]

If the equation system is expressed in the matrix form ![A\mathbf {x} =\mathbf {b} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/45d894430af69e29d6dda5aacbf4bb19336226a0), the entire solution set can also be expressed in matrix form. If the matrix _A_ is square (has _m_ rows and _n_\=_m_ columns) and has full rank (all _m_ rows are independent), then the system has a unique solution given by

![{\displaystyle \mathbf {x} =A^{-1}\mathbf {b} }](https://wikimedia.org/api/rest_v1/media/math/render/svg/c663a816e9df20500c57fad3e135949594e2f95e)

where ![A^{-1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/83ba3a7118652cffd5de466dc439ee9184371d50) is the [inverse](https://en.wikipedia.org/wiki/Matrix_inverse "Matrix inverse") of _A_. More generally, regardless of whether _m_\=_n_ or not and regardless of the rank of _A_, all solutions (if any exist) are given using the [Moore–Penrose inverse](https://en.wikipedia.org/wiki/Moore%E2%80%93Penrose_inverse "Moore–Penrose inverse") of _A_, denoted ![A^{+}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b380a5ff4e2d7d22a0dc1aea46e7ecba61f95fe6), as follows:

![{\displaystyle \mathbf {x} =A^{+}\mathbf {b} +\left(I-A^{+}A\right)\mathbf {w} }](https://wikimedia.org/api/rest_v1/media/math/render/svg/1dfe07d169a73899ce2ed3656f10e3cbf4bec70b)

where ![\mathbf {w} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/20795664b5b048744a2fd88977851104cc5816f8) is a vector of free parameters that ranges over all possible _n_×1 vectors. A necessary and sufficient condition for any solution(s) to exist is that the potential solution obtained using ![{\displaystyle \mathbf {w} =\mathbf {0} }](https://wikimedia.org/api/rest_v1/media/math/render/svg/dbcfe155e035c1c6fed6f010768dda152ea4d465) satisfy ![A\mathbf {x} =\mathbf {b} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/45d894430af69e29d6dda5aacbf4bb19336226a0) — that is, that ![{\displaystyle AA^{+}\mathbf {b} =\mathbf {b} .}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8a027e6b7082bf0bce3d14a468147fd873993ea9) If this condition does not hold, the equation system is inconsistent and has no solution. If the condition holds, the system is consistent and at least one solution exists. For example, in the above-mentioned case in which _A_ is square and of full rank, ![A^{+}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b380a5ff4e2d7d22a0dc1aea46e7ecba61f95fe6) simply equals ![A^{-1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/83ba3a7118652cffd5de466dc439ee9184371d50) and the general solution equation simplifies to

![{\displaystyle \mathbf {x} =A^{-1}\mathbf {b} +\left(I-A^{-1}A\right)\mathbf {w} =A^{-1}\mathbf {b} +\left(I-I\right)\mathbf {w} =A^{-1}\mathbf {b} }](https://wikimedia.org/api/rest_v1/media/math/render/svg/bd1cd1f53207922a024b8ba8c8b6aa1b8426f237)

as previously stated, where ![\mathbf {w} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/20795664b5b048744a2fd88977851104cc5816f8) has completely dropped out of the solution, leaving only a single solution. In other cases, though, ![\mathbf {w} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/20795664b5b048744a2fd88977851104cc5816f8) remains and hence an infinitude of potential values of the free parameter vector ![\mathbf {w} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/20795664b5b048744a2fd88977851104cc5816f8) give an infinitude of solutions of the equation.

### Other methods\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=20 "Edit section: Other methods")\]

While systems of three or four equations can be readily solved by hand (see [Cracovian](https://en.wikipedia.org/wiki/Cracovian "Cracovian")), computers are often used for larger systems. The standard algorithm for solving a system of linear equations is based on Gaussian elimination with some modifications. Firstly, it is essential to avoid division by small numbers, which may lead to inaccurate results. This can be done by reordering the equations if necessary, a process known as [_pivoting_](https://en.wikipedia.org/wiki/Pivot_element "Pivot element"). Secondly, the algorithm does not exactly do Gaussian elimination, but it computes the [LU decomposition](https://en.wikipedia.org/wiki/LU_decomposition "LU decomposition") of the matrix _A_. This is mostly an organizational tool, but it is much quicker if one has to solve several systems with the same matrix _A_ but different vectors **b**.

If the matrix _A_ has some special structure, this can be exploited to obtain faster or more accurate algorithms. For instance, systems with a [symmetric](https://en.wikipedia.org/wiki/Symmetric_matrix "Symmetric matrix") [positive definite](https://en.wikipedia.org/wiki/Positive-definite_matrix "Positive-definite matrix") matrix can be solved twice as fast with the [Cholesky decomposition](https://en.wikipedia.org/wiki/Cholesky_decomposition "Cholesky decomposition"). [Levinson recursion](https://en.wikipedia.org/wiki/Levinson_recursion "Levinson recursion") is a fast method for [Toeplitz matrices](https://en.wikipedia.org/wiki/Toeplitz_matrix "Toeplitz matrix"). Special methods exist also for matrices with many zero elements (so-called [sparse matrices](https://en.wikipedia.org/wiki/Sparse_matrix "Sparse matrix")), which appear often in applications.

A completely different approach is often taken for very large systems, which would otherwise take too much time or memory. The idea is to start with an initial approximation to the solution (which does not have to be accurate at all), and to change this approximation in several steps to bring it closer to the true solution. Once the approximation is sufficiently accurate, this is taken to be the solution to the system. This leads to the class of [iterative methods](https://en.wikipedia.org/wiki/Iterative_method "Iterative method"). For some sparse matrices, the introduction of randomness improves the speed of the iterative methods.<sup id="cite_ref-8"><a href="https://en.wikipedia.org/wiki/System_of_linear_equations#cite_note-8">[8]</a></sup>

There is also a [quantum algorithm for linear systems of equations](https://en.wikipedia.org/wiki/Quantum_algorithm_for_linear_systems_of_equations "Quantum algorithm for linear systems of equations").<sup id="cite_ref-Quantum_algorithm_for_solving_linear_systems_of_equations_by_Harrow_et_al._9-0"><a href="https://en.wikipedia.org/wiki/System_of_linear_equations#cite_note-Quantum_algorithm_for_solving_linear_systems_of_equations_by_Harrow_et_al.-9">[9]</a></sup>

## Homogeneous systems\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=21 "Edit section: Homogeneous systems")\]

A system of linear equations is **homogeneous** if all of the constant terms are zero:

![{\displaystyle {\begin{alignedat}{7}a_{11}x_{1}&&\;+\;&&a_{12}x_{2}&&\;+\cdots +\;&&a_{1n}x_{n}&&\;=\;&&&0\\a_{21}x_{1}&&\;+\;&&a_{22}x_{2}&&\;+\cdots +\;&&a_{2n}x_{n}&&\;=\;&&&0\\&&&&&&&&&&\vdots \;\ &&&\\a_{m1}x_{1}&&\;+\;&&a_{m2}x_{2}&&\;+\cdots +\;&&a_{mn}x_{n}&&\;=\;&&&0.\\\end{alignedat}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4202200b0d227a22b89a37a24c8f41c521644006)

A homogeneous system is equivalent to a matrix equation of the form

![{\displaystyle A\mathbf {x} =\mathbf {0} }](https://wikimedia.org/api/rest_v1/media/math/render/svg/9f51dab2d10f98cebc72b24960edf3e14e06c1e5)

where _A_ is an _m_ × _n_ matrix, **x** is a column vector with _n_ entries, and **0** is the [zero vector](https://en.wikipedia.org/wiki/Zero_vector "Zero vector") with _m_ entries.

### Homogeneous solution set\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=22 "Edit section: Homogeneous solution set")\]

Every homogeneous system has at least one solution, known as the _zero_ (or _trivial_) solution, which is obtained by assigning the value of zero to each of the variables. If the system has a [non-singular matrix](https://en.wikipedia.org/wiki/Non-singular_matrix "Non-singular matrix") (det(_A_) ≠ 0) then it is also the only solution. If the system has a singular matrix then there is a solution set with an infinite number of solutions. This solution set has the following additional properties:

1.  If **u** and **v** are two [vectors](https://en.wikipedia.org/wiki/Vector_(mathematics) "Vector (mathematics)") representing solutions to a homogeneous system, then the vector sum **u** + **v** is also a solution to the system.
2.  If **u** is a vector representing a solution to a homogeneous system, and _r_ is any [scalar](https://en.wikipedia.org/wiki/Scalar_(mathematics) "Scalar (mathematics)"), then _r_**u** is also a solution to the system.

These are exactly the properties required for the solution set to be a [linear subspace](https://en.wikipedia.org/wiki/Linear_subspace "Linear subspace") of **R**<sup><i>n</i></sup>. In particular, the solution set to a homogeneous system is the same as the [null space](https://en.wikipedia.org/wiki/Kernel_(matrix) "Kernel (matrix)") of the corresponding matrix _A_.

### Relation to nonhomogeneous systems\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=23 "Edit section: Relation to nonhomogeneous systems")\]

There is a close relationship between the solutions to a linear system and the solutions to the corresponding homogeneous system:

![{\displaystyle A\mathbf {x} =\mathbf {b} \qquad {\text{and}}\qquad A\mathbf {x} =\mathbf {0} .}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3144f044af31ffa73f20ff753c01b7b33de8b794)

Specifically, if **p** is any specific solution to the linear system _A_**x** = **b**, then the entire solution set can be described as

![{\displaystyle \left\{\mathbf {p} +\mathbf {v} :\mathbf {v} {\text{ is any solution to }}A\mathbf {x} =\mathbf {0} \right\}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/489fd9da86ec847951c08469aafb8b4dd7adf9d6)

Geometrically, this says that the solution set for _A_**x** = **b** is a [translation](https://en.wikipedia.org/wiki/Translation_(geometry) "Translation (geometry)") of the solution set for _A_**x** = **0**. Specifically, the [flat](https://en.wikipedia.org/wiki/Flat_(geometry) "Flat (geometry)") for the first system can be obtained by translating the [linear subspace](https://en.wikipedia.org/wiki/Euclidean_subspace "Euclidean subspace") for the homogeneous system by the vector **p**.

This reasoning only applies if the system _A_**x** = **b** has at least one solution. This occurs if and only if the vector **b** lies in the [image](https://en.wikipedia.org/wiki/Image_(mathematics) "Image (mathematics)") of the [linear transformation](https://en.wikipedia.org/wiki/Linear_transformation "Linear transformation") _A_.

## See also\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=24 "Edit section: See also")\]

-   [Arrangement of hyperplanes](https://en.wikipedia.org/wiki/Arrangement_of_hyperplanes "Arrangement of hyperplanes")
-   [Iterative refinement](https://en.wikipedia.org/wiki/Iterative_refinement "Iterative refinement")
-   [Coates graph](https://en.wikipedia.org/wiki/Coates_graph "Coates graph")
-   [LAPACK](https://en.wikipedia.org/wiki/LAPACK "LAPACK") (the free standard package to solve linear equations numerically; available in [Fortran](https://en.wikipedia.org/wiki/Fortran "Fortran"), [C](https://en.wikipedia.org/wiki/C_(programming_language) "C (programming language)"), [C++](https://en.wikipedia.org/wiki/C%2B%2B "C++"))
-   [Linear equation over a ring](https://en.wikipedia.org/wiki/Linear_equation_over_a_ring "Linear equation over a ring")
-   [Linear least squares](https://en.wikipedia.org/wiki/Linear_least_squares_(mathematics) "Linear least squares (mathematics)")
-   [Matrix decomposition](https://en.wikipedia.org/wiki/Matrix_decomposition "Matrix decomposition")
-   [Matrix splitting](https://en.wikipedia.org/wiki/Matrix_splitting "Matrix splitting")
-   [NAG Numerical Library](https://en.wikipedia.org/wiki/NAG_Numerical_Library "NAG Numerical Library") (NAG Library versions of LAPACK solvers)
-   [Rybicki Press algorithm](https://en.wikipedia.org/wiki/Rybicki_Press_algorithm "Rybicki Press algorithm")
-   [Simultaneous equations](https://en.wikipedia.org/wiki/Simultaneous_equations "Simultaneous equations")

## References\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=25 "Edit section: References")\]

1.  **[^](https://en.wikipedia.org/wiki/System_of_linear_equations#cite_ref-1 "Jump up")** [Anton (1987](https://en.wikipedia.org/wiki/System_of_linear_equations#CITEREFAnton1987), p. 2)
2.  **[^](https://en.wikipedia.org/wiki/System_of_linear_equations#cite_ref-2 "Jump up")** [Beauregard & Fraleigh (1973](https://en.wikipedia.org/wiki/System_of_linear_equations#CITEREFBeauregardFraleigh1973), p. 65)
3.  **[^](https://en.wikipedia.org/wiki/System_of_linear_equations#cite_ref-3 "Jump up")** [Burden & Faires (1993](https://en.wikipedia.org/wiki/System_of_linear_equations#CITEREFBurdenFaires1993), p. 324)
4.  **[^](https://en.wikipedia.org/wiki/System_of_linear_equations#cite_ref-4 "Jump up")** [Golub & Van Loan (1996](https://en.wikipedia.org/wiki/System_of_linear_equations#CITEREFGolubVan_Loan1996), p. 87)
5.  **[^](https://en.wikipedia.org/wiki/System_of_linear_equations#cite_ref-5 "Jump up")** [Harper (1976](https://en.wikipedia.org/wiki/System_of_linear_equations#CITEREFHarper1976), p. 57)
6.  **[^](https://en.wikipedia.org/wiki/System_of_linear_equations#cite_ref-6 "Jump up")** ["Systems of Linear Equations"](https://math.berkeley.edu/~arash/54/notes/01_01.pdf) (PDF). _math.berkeley.edu_.`{{[cite web](https://en.wikipedia.org/wiki/Template:Cite_web "Template:Cite web")}}`: CS1 maint: url-status ([link](https://en.wikipedia.org/wiki/Category:CS1_maint:_url-status "Category:CS1 maint: url-status"))
7.  **[^](https://en.wikipedia.org/wiki/System_of_linear_equations#cite_ref-Linear_Matrices_7-0 "Jump up")** Charles G. Cullen (1990). _Matrices and Linear Transformations_. MA: Dover. p. 3. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-0-486-66328-9](https://en.wikipedia.org/wiki/Special:BookSources/978-0-486-66328-9 "Special:BookSources/978-0-486-66328-9").
8.  **[^](https://en.wikipedia.org/wiki/System_of_linear_equations#cite_ref-8 "Jump up")** Hartnett, Kevin (8 March 2021). ["New Algorithm Breaks Speed Limit for Solving Linear Equations"](https://www.quantamagazine.org/new-algorithm-breaks-speed-limit-for-solving-linear-equations-20210308/). _[Quanta Magazine](https://en.wikipedia.org/wiki/Quanta_Magazine "Quanta Magazine")_. Retrieved 9 March 2021.
9.  **[^](https://en.wikipedia.org/wiki/System_of_linear_equations#cite_ref-Quantum_algorithm_for_solving_linear_systems_of_equations_by_Harrow_et_al._9-0 "Jump up")** [Quantum algorithm for solving linear systems of equations, by Harrow et al.](https://arxiv.org/abs/0811.3171).

## Bibliography\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=26 "Edit section: Bibliography")\]

-   Anton, Howard (1987), _Elementary Linear Algebra_ (5th ed.), New York: [Wiley](https://en.wikipedia.org/wiki/John_Wiley_%26_Sons "John Wiley & Sons"), [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [0-471-84819-0](https://en.wikipedia.org/wiki/Special:BookSources/0-471-84819-0 "Special:BookSources/0-471-84819-0")
-   Beauregard, Raymond A.; Fraleigh, John B. (1973), [_A First Course In Linear Algebra: with Optional Introduction to Groups, Rings, and Fields_](https://archive.org/details/firstcourseinlin0000beau), Boston: [Houghton Mifflin Company](https://en.wikipedia.org/wiki/Houghton_Mifflin_Company "Houghton Mifflin Company"), [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [0-395-14017-X](https://en.wikipedia.org/wiki/Special:BookSources/0-395-14017-X "Special:BookSources/0-395-14017-X")
-   Burden, Richard L.; Faires, J. Douglas (1993), [_Numerical Analysis_](https://archive.org/details/numericalanalysi00burd) (5th ed.), Boston: [Prindle, Weber and Schmidt](https://en.wikipedia.org/w/index.php?title=Prindle,_Weber_and_Schmidt&action=edit&redlink=1 "Prindle, Weber and Schmidt (page does not exist)"), [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [0-534-93219-3](https://en.wikipedia.org/wiki/Special:BookSources/0-534-93219-3 "Special:BookSources/0-534-93219-3")
-   Golub, Gene H.; Van Loan, Charles F. (1996), _Matrix Computations_ (3rd ed.), Baltimore: [Johns Hopkins University Press](https://en.wikipedia.org/wiki/Johns_Hopkins_University_Press "Johns Hopkins University Press"), [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [0-8018-5414-8](https://en.wikipedia.org/wiki/Special:BookSources/0-8018-5414-8 "Special:BookSources/0-8018-5414-8")
-   Harper, Charlie (1976), _Introduction to Mathematical Physics_, New Jersey: [Prentice-Hall](https://en.wikipedia.org/wiki/Prentice-Hall "Prentice-Hall"), [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [0-13-487538-9](https://en.wikipedia.org/wiki/Special:BookSources/0-13-487538-9 "Special:BookSources/0-13-487538-9")

## Further reading\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=27 "Edit section: Further reading")\]

-   Axler, Sheldon Jay (1997), _Linear Algebra Done Right_ (2nd ed.), Springer-Verlag, [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [0-387-98259-0](https://en.wikipedia.org/wiki/Special:BookSources/0-387-98259-0 "Special:BookSources/0-387-98259-0")
-   Lay, David C. (August 22, 2005), _Linear Algebra and Its Applications_ (3rd ed.), Addison Wesley, [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-0-321-28713-7](https://en.wikipedia.org/wiki/Special:BookSources/978-0-321-28713-7 "Special:BookSources/978-0-321-28713-7")
-   Meyer, Carl D. (February 15, 2001), [_Matrix Analysis and Applied Linear Algebra_](https://web.archive.org/web/20010301161440/http://matrixanalysis.com/DownloadChapters.html), Society for Industrial and Applied Mathematics (SIAM), [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-0-89871-454-8](https://en.wikipedia.org/wiki/Special:BookSources/978-0-89871-454-8 "Special:BookSources/978-0-89871-454-8"), archived from [the original](http://www.matrixanalysis.com/DownloadChapters.html) on March 1, 2001
-   Poole, David (2006), _Linear Algebra: A Modern Introduction_ (2nd ed.), Brooks/Cole, [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [0-534-99845-3](https://en.wikipedia.org/wiki/Special:BookSources/0-534-99845-3 "Special:BookSources/0-534-99845-3")
-   Anton, Howard (2005), _Elementary Linear Algebra (Applications Version)_ (9th ed.), Wiley International
-   Leon, Steven J. (2006), _Linear Algebra With Applications_ (7th ed.), Pearson Prentice Hall
-   [Strang, Gilbert](https://en.wikipedia.org/wiki/Gilbert_Strang "Gilbert Strang") (2005), _Linear Algebra and Its Applications_

## External links\[[edit](https://en.wikipedia.org/w/index.php?title=System_of_linear_equations&action=edit&section=28 "Edit section: External links")\]

-   [![](https://upload.wikimedia.org/wikipedia/en/thumb/4/4a/Commons-logo.svg/12px-Commons-logo.svg.png)](https://en.wikipedia.org/wiki/File:Commons-logo.svg) Media related to [System of linear equations](https://commons.wikimedia.org/wiki/Category:System_of_linear_equations "commons:Category:System of linear equations") at Wikimedia Commons