# Task 1 - Generating the Collatz Conjecture

library(tibble)
library(dplyr)
library(purrr)

gen_collatz <- function(n){
  
  # Ensure input n is a positive integer
  if(!is.integer(n) || n <= 0){
    stop("Input n is invalid.")
  }
  
  # Initial vector for storing collatz sequence
  collatz_seq <- c(n)
  
  # Generate the sequence until it reaches 1
  while(n != 1){
    if(n %% 2 == 0){
      n <- n / 2
    } else{
      n <- 3 * n + 1
    }
    collatz_seq <- c(collatz_seq, n)
  }
  
  return(collatz_seq)
}

# Create an empty tibble
collatz_df <- tibble(start = 1:10000, seq = map(start, gen_collatz))