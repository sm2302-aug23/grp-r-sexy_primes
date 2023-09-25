# Task 6 - Creative visualisation challenge

library(primes)

# create a vector to store the count of prime numbers in Collatz sequences
prime_counts <- integer(10000)

# calculate prime counts for each starting integer
for (i in 1:10000) {
  collatz_seq <- gen_collatz(i)  # generate Collatz sequence
  prime_count <- sum(sapply(collatz_seq, is_prime))  # count prime numbers
  prime_counts[i] <- prime_count
}

# visualisation
library(ggplot2)

collatz_prime_plot <- ggplot() +
  geom_bar(mapping = aes(x = 1:10000, y = prime_counts), stat = "identity") +
  labs(x = "Starting Integers", y = "Count of Prime Numbers", title = "Frequency of Prime Numbers in Collatz Sequences")

# display the plot
print(collatz_prime_plot)