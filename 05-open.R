# Task 5 - Open-ended exploration

library(tidyverse)
library(primes)

#frequency each prime number appears in a sequence
freq_prime <- (collatz_df$seq)[-1] %>%
  unlist() %>%
  table() %>%
  as.data.frame() %>%
  mutate(., prime = is_prime(.)) %>%
  filter(., prime == TRUE) %>%
  arrange(., desc(Freq)) %>%
  subset(., select = -prime)

#changing the column names
(colnames(freq_prime) <- c("start", "freq"))

#creating a new df of most freq occuring primes excluding 2
top_10_freq_primes <- freq_prime[2:11,]
rownames(top_10_freq_primes) <- c(1:10)
