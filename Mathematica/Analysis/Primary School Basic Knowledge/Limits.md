## intro

for more professional limits
[[Mathematica/Analysis/Real Analysis/Limits]]

## Limits Chapter in Mathematical Analysis

The concept of limits is a fundamental part of mathematical analysis. It is used to describe the behavior of a function as the input approaches a certain value. The following are some of the key definitions, theories, lemmas, axioms, and equations related to limits in mathematical analysis.

### Definitions

1. Limit: A limit is the value that a function approaches as its input approaches a certain value. It is denoted by the symbol lim.

2. One-sided Limit: A one-sided limit is the value that a function approaches as its input approaches a certain value from one side only.

3. Limit at Infinity: A limit at infinity is the value that a function approaches as its input becomes arbitrarily large in either the positive or negative direction.

4. Continuity: A function is said to be continuous at a point if its limit at that point exists and is equal to the value of the function at that point.

5. Differentiability: A function is said to be differentiable at a point if its derivative exists at that point.

### Theory

1. Squeeze Theorem: If a function is trapped between two other functions that approach the same limit as the input approaches a certain value, then the function also approaches that limit.

2. Intermediate Value Theorem: If a function is continuous on a closed interval [a, b], then it takes on every value between f(a) and f(b) at least once.

3. L'Hopital's Rule: If the limit of the ratio of two functions is of the form 0/0 or infinity/infinity, then the limit can be found by taking the derivative of the numerator and denominator and evaluating the resulting ratio.

### Lemmas

1. Algebraic Limit Theorem: The limit of a sum, difference, product, or quotient of two functions is equal to the sum, difference, product, or quotient of their limits, respectively.

2. Sandwich Theorem: If a function is trapped between two other functions that approach the same limit as the input approaches a certain value, then the function also approaches that limit.

3. Continuous Function Theorem: If a function is continuous at a point, then it is also continuous on any interval containing that point.

### Axioms

1. Archimedean Property of Real Numbers: For any two positive real numbers a and b, there exists a positive integer n such that na > b.

2. Monotone Convergence Theorem: A monotonically increasing (or decreasing) sequence of real numbers that is bounded above (or below) converges to its supremum (or infimum).

### Equations

1. Definition of a Limit:
```
lim f(x) = L
x -> a
```

2. Definition of Continuity:
```
f(a) = lim f(x)
       x -> a
```

3. Definition of Differentiability:
```
f'(a) = lim (f(x) - f(a))/(x - a)
          x -> a
```

4. L'Hopital's Rule:
```
lim f(x)/g(x) = lim f'(x)/g'(x)
x -> a          x -> a
```

5. Intermediate Value Theorem:
```
f(a) <= c <= f(b) or f(b) <= c <= f(a)
```
where a < b and f(a) < f(b) (or vice versa).

These definitions, theories, lemmas, axioms, and equations are essential for understanding the concept of limits in mathematical analysis.


Sure, my apologies for the mistake. Here's the same markdown with LaTeX equations enclosed in `$$$`:

## Tangent Lines and Rates of Change

In calculus, tangent lines and rates of change are fundamental concepts used to describe the behavior of functions. Tangent lines are used to approximate the behavior of a function at a specific point, while rates of change describe how a function changes over time. In this section, we will explore these concepts in detail, including the relevant definitions, theories, lemmas, axioms, proofs, and equations.

### Concepts

1. Tangent Line: A tangent line is a line that touches a curve at a single point and has the same slope as the curve at that point.

2. Slope: The slope of a line is a measure of its steepness and is defined as the change in the y-coordinate divided by the change in the x-coordinate.

3. Derivative: The derivative of a function is a measure of its instantaneous rate of change at a specific point and is defined as the limit of the difference quotient as the change in the x-coordinate approaches zero.

### Theory

1. Mean Value Theorem: If a function is continuous on a closed interval $[a, b]$ and differentiable on the open interval $(a, b)$, then there exists a point $c$ in $(a, b)$ such that the derivative of the function at $c$ is equal to the average rate of change of the function over the interval $[a, b]$. This can be expressed mathematically as:
$$
f'(c) = \frac{f(b) - f(a)}{b-a}
$$

2. Rolle's Theorem: If a function is continuous on a closed interval $[a, b]$ and differentiable on the open interval $(a, b)$, and if the function takes on the same value at the endpoints $a$ and $b$, then there exists a point $c$ in $(a, b)$ such that the derivative of the function at $c$ is equal to zero. This can be expressed mathematically as:
$$
f(a) = f(b) \implies \exists c \in (a, b) \text{ such that } f'(c) = 0
$$

### Lemma

1. Chain Rule: If $y = f(g(x))$, where $f$ and $g$ are differentiable functions, then the derivative of $y$ with respect to $x$ is given by the product of the derivative of $f$ with respect to $g$ and the derivative of $g$ with respect to $x$. This can be expressed mathematically as:
$$
\frac{dy}{dx} = \frac{dy}{du} \frac{du}{dx}
$$

### Axiom

1. Differentiation Rules: The derivative of a constant function is zero, the derivative of a power function is given by the product of the constant coefficient and the derivative of the base function raised to the power decreased by one, and the derivative of a sum or difference of functions is equal to the sum or difference of their derivatives, respectively.

### Proof

1. Proof of the Mean Value Theorem: Let $f$ be a function that is continuous on a closed interval $[a, b]$ and differentiable on the open interval $(a, b)$. Let $F(x) = f(x) - f(a) - \frac{f(b) - f(a)}{b-a}(x - a)$. Then $F(a) = F(b) = 0$. By Rolle's Theorem, there exists a point $c$ in $(a, b)$ such that $F'(c) = 0$. But $F'(c) = f'(c) - \frac{f(b) - f(a)}{b-a}$, so $f'(c) = \frac{f(b) - f(a)}{b-a}$.

### Equations

1. Slope of a Line:
$$
m = \frac{\Delta y}{\Delta x}
$$

2. Derivative of a Function:
$$
f'(x) = \lim_{\Delta x \to 0} \frac{f(x + \Delta x) - f(x)}{\Delta x}
$$

3. Chain Rule:
$$
\frac{dy}{dx} = \frac{dy}{du} \frac{du}{dx}
$$

4. Mean Value Theorem:
$$
f'(c) = \frac{f(b) - f(a)}{b - a}
$$

5. Rolle's Theorem:
$$
f'(c) = 0
$$

These concepts, theories, lemmas, axioms, proofs, and equations are essential for understanding the behavior of functions in calculus. They provide the foundation for more advanced topics such as optimization, integration, and differential equations.