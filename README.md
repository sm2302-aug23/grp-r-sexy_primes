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

### 2) Exploratory Data Analysis

In this task, we conducted exploratory data analysis on the Collatz sequences generated in Task 1. The analysis involved answering several questions using `{tidyverse}` data wrangling techniques.

**Question 1: Find the top 10 starting integers that produce the longest sequences**

To answer this question, we sorted the `collatz_df` tibble in descending order of sequence length and selected the top 10 rows. These rows represent the starting integers that produce the longest Collatz sequences.

**Question 2: Find out which starting integer produces a sequence that reaches the highest maximum value**

For this question, we searched for the starting integer that results in the highest maximum value within its sequence. This allows us to identify the integer that produces the most significant maximum value.

**Question 3: What is the average length and standard deviation of the sequence for even starting integers compared to odd ones?**

To answer this question, we calculated the average length and standard deviation of sequences separately for even and odd starting integers. This analysis helps us understand the distribution of sequence lengths between these two categories.

Below are the variables we made use of for answering the questions:

- `top10longest` is to find the top 10 starting integers in the longest Collatz sequences.

- `max_val_int` is the starting integer with highest maximum value in a Collatz sequence.

- `even_odd_summary` is the summary statistics for even and odd starting integers, consisting the average length and standard deviation for each group.

Extractions of the individual average length and standard deviation values for even and odd starting integers:

- `even_odd_avg_len` keep the average length for even and odd starting integers.

- `even_odd_sd_len` keep the standard deviation for even and odd starting integers.

**Outcome:**

- Identified the top 10 starting integers with the longest sequences.
- Determined the starting integer with the highest maximum value in its sequence.
- Calculated the average length and standard deviation of Collatz sequences for even and odd starting integers.

### 3) Investigating "backtracking" in sequences

"Backtracking" occurs when a sequence reaches a value that is less than the starting integer, but then increases again above the starting integer at least once before reaching 1. We were tasked to explore the concept of “backtracking” within the *Collatz Conjecture*.

**Outcome:**

- A function `backtracking_stats` was made which uses a sequence and its starting value to determine whether the sequence backtracks, the number of times the sequence goes above their starting integer (`above_count`), and the maximum value reached after the first backtrack for the sequence (`max_after_backtrack`). The function then prints the information in the order above.
- A new data frame, `backtracks_df`, (based on the initial `collatz_df` data frame) is made. `backtracks_df` contains only backtracking sequences, and now includes the additional information from the `backtracking_stats` function.
- `mode_backtrack` provides information about the most frequently occurring number of times they go above their starting integer[^1].
- `even_odd_backtrack` gives the frequency counts of even and odd backtracking integers, in that order.

[^1]: This part of the task utilizes a statistical mode function by Ken Williams found [here](https://stackoverflow.com/questions/2547402/how-to-find-the-statistical-mode).

### 4) Visualisations

**Part (1)** 
![Scatterplot of Sequence Lengths and Starting Integers](Plot#1.jpeg)

**Part (2)**
![Scatterplot of Max Values and Starting Integers](Plot#2.jpeg)

**Part (3)**
![Boxplot of Parity and Length](Plot#3.jpeg)



#### Contribution declaration

- Task 1: @nhfizhn
- Task 2: @jadotj
- Task 3: @nichongy
- Task 4: @AzharAmiin, @nhfizhn
- Task 5: @author4
- Task 6: @author1
- README: @nhfizhn, @jadotj, @nichongy, @AzharAmiin
- other tasks…
