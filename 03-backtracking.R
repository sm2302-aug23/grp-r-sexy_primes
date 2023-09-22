#Function to check if a sequence is backtracking
backtracking_stats <- function(seq, start){
  #Initializing
  decrease <- FALSE
  backtracking <- FALSE
  above_count <- 0
  backtrack_started <- FALSE
  max_after_backtrack <- NA
  
  for(i in seq){
    if(i < start){
      decrease <- TRUE
    }
    
    if(decrease && i > start){
      backtracking <- TRUE
      above_count <- above_count + 1
      
      if(!backtrack_started){
        backtrack_started <- TRUE
        max_after_backtrack <- i
      }
      
      if(backtrack_started && i > max_after_backtrack){
        max_after_backtrack <-i
      }
    }
    
    if(!decrease && i > start){
      above_count <- above_count + 1
    }
  }
  return(list(backtracking, above_count, max_after_backtrack))
}

#Making a new data frame with more info regarding backtracking
backtracks_df <- collatz_df %>%
  rowwise() %>%
  mutate(backtracking = backtracking_stats(seq,start)[1],
         above_count = backtracking_stats(seq,start)[2],
         max_after_backtrack = backtracking_stats(seq,start)[3]) %>%
  filter(., backtracking == TRUE) %>%
  subset(., select = -backtracking)

#Taken from Ken Williams https://stackoverflow.com/questions/2547402/how-to-find-the-statistical-mode
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
#Most frequently occurring number of times they go above their starting integer 
mode_backtrack <- as.integer(Mode(backtracks_df$above_count))

#The maximum value reached after the first backtrack for these sequences
max_after_backtrack <- unlist(backtracks_df$max_after_backtrack)

#Frequency counts for even and odd backtracking integers
#Even
n_even <- filter(.data = backtracks_df, parity == "Even") %>%
           nrow(.)

#Odd
n_odd <- filter(.data = backtracks_df, parity == "Odd") %>%
          nrow(.)

even_odd_backtrack <- c(n_even, n_odd)
  