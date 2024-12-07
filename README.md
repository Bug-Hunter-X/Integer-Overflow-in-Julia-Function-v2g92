# Julia Integer Overflow Bug
This repository demonstrates a subtle integer overflow bug in a simple Julia function. The `myfunction` calculates the square of a number, handling positive, negative, and zero inputs. However, for sufficiently large negative integers, squaring and negating can lead to integer overflow.

## Bug Description
The bug is in the `else` block where `-x^2` is calculated for negative `x`. If `x` is a very large negative integer, `x^2` might be a larger positive integer that exceeds the maximum representable integer, resulting in an overflow. The subsequent negation can lead to unexpected behavior or an error.

## Solution
The solution involves using a different data type that can accommodate larger numbers, like `BigInt`, which handles arbitrary-precision integers. This resolves the potential for integer overflow errors.

## How to Reproduce
1. Clone the repository.
2. Run `bug.jl` in a Julia interpreter. Observe the output for small and then large negative input values.   
3. Run `bugSolution.jl`. Observe that the overflow error is avoided. 