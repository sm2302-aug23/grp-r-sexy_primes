prime_lengths <- (filter(primes_df, prime == TRUE))$length
non_prime_lengths <- (filter(primes_df, prime == FALSE))$length

length_comparison <- data.frame(
  group = factor(rep(c("Prime","Non-Prime"), each = 10)),
  sequence_length = c(prime_lengths, non_prime_lengths)
)

ggplot(length_comparison, aes(x = group, y = sequence_length, fill = group)) +
  geom_boxplot() +
  labs(x = "Group", y = "Sequence Length") +
  ggtitle("Comparison of Sequence Lengths for Prime and Non-Prime Starting Integers")
