is_backtracking <- function(seq, start){
  decrease <- FALSE
  backtracking <- FALSE
  above_count <- 0
  
  for(i in seq){
    if(i < start){
      decrease <- TRUE
    }
    
    if(decrease && i > start){
      backtracking <- TRUE
      above_count <- above_count + 1
    }
  }
  return(list(backtracking, above_count))
}

backtracks_df <- collatz_df %>%
  rowwise() %>%
  mutate(backtracking = is_backtracking(seq,start)[1], above_count = is_backtracking(seq,start)[2]) %>%
  filter(., backtracking == TRUE) %>%
  subset(., select = -backtracking)

mode_backtrack <- mode(backtracks_df$above_count)
  
  
