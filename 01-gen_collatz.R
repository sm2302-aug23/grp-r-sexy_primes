# Task 1 - Generating the Collatz Conjecture

library(tibble)
library(dplyr)
library(tidyverse)

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

# Create an empty tibble with 5 columns
collatz_df <- tibble(start = integer(0), 
                     seq = list(), 
                     length = double(0), 
                     parity = character(0), 
                     max_val = double(0))

# Apply the function to integers from 1 to 10,000
for (i in 1:10000) {
  collatz_seq <- gen_collatz(i)
  collatz_df <- collatz_df %>%
    add_row(start = i, 
            seq = list(collatz_seq), 
            length = length(collatz_seq), 
            parity = ifelse(i %% 2 == 0, "Even", "Odd"), 
            max_val = max(collatz_seq))
}