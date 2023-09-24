library(tidyverse)
library(primes)

primes_df <- mutate(collatz_df, prime = is_prime(start))