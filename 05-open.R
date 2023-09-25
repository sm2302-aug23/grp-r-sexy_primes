# Task 5 - Open-ended exploration

library(tidyverse)
library(primes)

primes_df <- mutate(collatz_df, prime = is_prime(start))

#prime lengths vs non prime lengths
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

#frequency each prime number appears in a sequence
freq_prime <- (collatz_df$seq)[-1] %>%
  unlist() %>%
  table() %>%
  as.data.frame() %>%
  mutate(., prime = is_prime(.)) %>%
  filter(., prime == TRUE) %>%
  arrange(., desc(Freq))
colnames(freq_prime) <- c("start", "freq", "prime")

ggplot(freq_prime, aes (x = 1:2432, y = freq))+
  geom_line()