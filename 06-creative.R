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

# calculate maximum, minimum, and average prime counts
max_prime_count <- max(prime_counts)
min_prime_count <- min(prime_counts)
avg_prime_count <- mean(prime_counts)

# visualisation
library(ggplot2)

collatz_prime_plot <- ggplot() +
  geom_bar(mapping = aes(x = 1:10000, y = prime_counts), stat = "identity") +
  labs(x = "Starting Integers", 
       y = "Count of Prime Numbers", 
       title = "Frequency of Prime Numbers in Collatz Sequences") +
  theme_minimal() +
  labs(subtitle = paste("Max Prime Count:", max_prime_count, 
                        "| Min Prime Count:", min_prime_count, 
                        "| Avg Prime Count:", round(avg_prime_count, 2)))

# display the plot
print(collatz_prime_plot)

#2 bar plot of Collatz sequence lengths and its frequency -------------------------------------

#subset the sequence lengths from collatz_df
sequence_length_df <- collatz_df["length"]

# Create a bar plot to visualize the frequency of sequence lengths
ggplot(sequence_length_df, aes(x = Length)) +
  geom_bar() +
  labs(
    title = "Frequency of Sequence Lengths",
    x = "Sequence Length",
    y = "Frequency"
  ) +
  theme_minimal()
