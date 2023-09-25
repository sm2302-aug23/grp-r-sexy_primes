# Task 4 - Visualisations

#1 plot--------------------------------------------------------------------------

plot1 <- ggplot(collatz_df, aes(x = start, y = length)) + 
  geom_point() + 
  labs(x = "Starting Integers", y = "Length of Sequence")

#Top 10 starting integers are > 200 in length 
top_10_starting_integers <- collatz_df %>%
  arrange(desc(length)) %>%
  head(10) 

#Highlight the top 10 starting integers
plot1 + 
  geom_point(data = top_10_starting_integers, aes(color = "Top 10"))
    
#2 plot-------------------------------------------------------------------------------

#To obtain highest values in length
collatz_highest <- filter(collatz_df, length > 200) 

view(collatz_highest)

#Subset of points to highlight according to top10longest list
top10longest
top10 <- collatz_highest[c(16, 42, 20, 27, 40, 18, 46, 47, 23, 24), ]

plot2 <- ggplot(collatz_df, aes(x = start, y = max_val)) +
  geom_point() + 
  geom_point(data = top_10_starting_integers, aes(x = start, y = max_val), colour = "red") +
  labs(x = "Starting Integers", y = "Max Value")
   

#3 plot--------------------------------------------------------------------------------

ggplot(collatz_df) + geom_boxplot(aes(length, parity))
