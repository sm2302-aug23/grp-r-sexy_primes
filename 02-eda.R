#1 Find the top 10 starting integers that produce the longest sequences
top10longest <- collatz_df %>%
  arrange(desc(length)) %>%
  slice_head(n = 10) %>%
  pull(start)
#2 Find out which starting integer produces a sequence that reaches the highest maximum value
max_val_int <- collatz_df %>%
  filter(max_val == max(max_val)) %>%
    select(start) %>%
    
unlist()
#3 What is the average length and standard deviation of the sequence for even starting integers compared to odd ones?
even_odd_summary <- collatz_df %>%
  group_by(even_odd = ifelse(start %% 2 == 0, "Even", "Odd")) %>%
    summarise(even_odd_avg_len = mean(length),
            even_odd_sd_len = sd(length))

# Extract values
even_odd_avg_len <- even_odd_summary$even_odd_avg_len
even_odd_sd_len <- even_odd_summary$even_odd_sd_len