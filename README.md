# Root_Finder

## Objective:
The aim is to compare and analyze the behavior of the different numerical methods such as
```R
Bisection,
False-position,
Fixed point,
Newton-Raphson,
Secant,
Bierge-Vieta,
Gaussian-elimination,
LU decomposition,
Gaussian-Jordan,
Gauss-Seidel.
```
## Description:
root finder program which takes the following as input: -
- The equation as free text.
- The technique to use as a drop down list or buttons.
- Its required parameters (e.g. interval for the bisection method).

## Specification:

The program must contain the following features:

- An interactive GUI that enables the user to enter equations containing different functions such as:
{poly, exp, cos, sin…}.
- Reading from files are available .
- choosing a method to solve the given equation, or choosing to use all the methods with text boxes to 
enter the parameters for each method.
- A plot of the function with the boundary functions in case of bisection and false position, g(x)
with y = x in case of fixed point, f’(x) in the remaining cases.
- The answer for the chosen method indicating the number of iterations, execution time, all iterations,
approximate root, and precision.
