#1 plot

plot1 <- ggplot(collatz_df, aes(x = start, y = length)) + 
  geom_point() + labs(x = "Starting Integers", y = "Length of Sequence")

#Top 10 starting integers are > 200 in length 

    
#2 plot

#To obtain highest values in length
collatz_highest <- filter(collatz_df, length > 200) 

#Converting list (top10longest) to tibble
top10 <- as_tibble(top10longest)


plot2 <- ggplot(collatz_highest, aes(x = start, y = length)) +
  geom_point() + labs(x = "Starting Integers", y = "Length of Sequence")
   
top10longest <- collatz_df %>%
  arrange(desc(length)) %>%
  slice_head(n = 10) %>%
  pull(start)



#3 plot

ggplot(collatz_df, )



































