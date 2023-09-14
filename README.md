[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/HUOoSZXh)
# Assignment 1 (R group)

> Analysis of the Collatz Conjecture

- [Assignment questions](ASSIGNMENT.md) 
- Please also read [`INSTRUCTIONS.md`](INSTRUCTIONS.md) for specific
submission instructions and marking rubric.

## Background

The Collatz Conjecture is a mathematical conjecture concerning a sequence defined as follows. Start with any positive integer $n$. Then each term is obtained from the previous term according to these rules:

1. If the previous term is even, the next term is one half of the previous term.
2. If the previous term is odd, the next term is $3$ times the previous term plus $1$.

The conjecture is that no matter what value of $n$, the sequence will always reach 1.

## Tasks

### 1) Generating the *Collatz Conjecture*

In this task, we implemented a solution to the *Collatz Conjecture*, which involves generating the *Collatz* sequence for positive integers. We created an R function called `gen_collatz` that generates the sequence, and then applied this function to integers from $1$ to $10,000$, storing the results in a tibble. The tibble, named `collatz_df`, contains the starting integer values and their corresponding *Collatz* sequences.

**Outcome:**

- Implemented the `gen_collatz` function to generate *Collatz* sequences.
- Applied the function to a range of positive integers from $1$ to $10,000$.
Stored the results in a tibble (`collatz_df`) with columns for starting values and *Collatz* sequences.
- This analysis provides a clear understanding of how the *Collatz Conjecture* was approached and what the resulting data structure contains.





#### Contribution declaration

- Task 1: @nhfizhn
- Task 2: @author2
- Task 3: @author3
- Task 4: @author2
- Task 5: @author4
- Task 6: @author1
- README: @nhfizhn, ...
- other tasks…
