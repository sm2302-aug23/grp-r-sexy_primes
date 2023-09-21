# Define your gen_collatz function
gen_collatz <- function(starting_integer) {
  # Collatz sequence generation for a single starting_integer
  sequence <- c(starting_integer)
  while (sequence[length(sequence)] != 1) {
    if (sequence[length(sequence)] %% 2 == 0) {
      sequence <- c(sequence, sequence[length(sequence)] / 2)
    } else {
      sequence <- c(sequence, 3 * sequence[length(sequence)] + 1)
    }
  }
  # data frame with the sequence and starting_integer
  collatz_data <- data.frame(starting_integer = starting_integer, sequence = sequence)
  return(collatz_data)
}

# empty data frame to store the results
collatz_df <- data.frame(starting_integer = integer(0), sequence = integer(0))

# Generate Collatz sequences for a range of starting integers and append to collatz_df
starting_integers <- 1:100  # Replace with your desired range of starting integers
for (i in starting_integers) {
  collatz_df <- rbind(collatz_df, gen_collatz(i))
}