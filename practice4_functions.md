Practice 3: Writing Functions in R
================

This practice covers how to write reusable functions in R. Functions
help you avoid repeating code and make your scripts easier to read and
maintain.  
**Syntax:** `function_name <- function(arguments) { body }`

------------------------------------------------------------------------

## Basic Function

``` r
# --- BASIC FUNCTION ---
# Functions let you package reusable code into a named block

# A simple function that greets a user
greet <- function(name) {
  message <- paste("Hello,", name, "! Welcome to R.")
  return(message)
}

# Call the function with different inputs
greet("Alice")
```

    ## [1] "Hello, Alice ! Welcome to R."

``` r
greet("Bob")
```

    ## [1] "Hello, Bob ! Welcome to R."

------------------------------------------------------------------------

## Function with a Default Argument

``` r
# --- FUNCTION WITH DEFAULT ARGUMENT ---
# Default values are used when the caller doesn't supply that argument

calculate_area <- function(length, width = 5) {
  area <- length * width
  return(area)
}

# Call with both arguments explicitly
calculate_area(10, 3)
```

    ## [1] 30

``` r
# Call using only length — width falls back to the default value of 5
calculate_area(10)
```

    ## [1] 50

------------------------------------------------------------------------

## Function Returning Multiple Values

``` r
# --- FUNCTION RETURNING MULTIPLE VALUES ---
# R functions return one object; use a list to bundle multiple values together

get_stats <- function(numbers) {
  result <- list(
    mean   = mean(numbers),     # Average
    median = median(numbers),   # Middle value
    sd     = sd(numbers),       # Standard deviation
    min    = min(numbers),      # Smallest value
    max    = max(numbers)       # Largest value
  )
  return(result)
}

# Apply the function to a numeric vector
scores <- c(88, 74, 95, 60, 82, 91, 70)
stats <- get_stats(scores)

# Access individual results from the returned list
cat("Mean:", stats$mean, "\n")
```

    ## Mean: 80

``` r
cat("Median:", stats$median, "\n")
```

    ## Median: 82

``` r
cat("Min:", stats$min, "| Max:", stats$max, "\n")
```

    ## Min: 60 | Max: 95

------------------------------------------------------------------------

## Practical Example: Combining Filtering and Functions

``` r
# --- PRACTICAL EXAMPLE ---
# A function that filters a data frame by score threshold and prints a summary

# First, recreate the students dataset
students <- data.frame(
  Name    = c("Alice", "Bob", "Charlie", "Diana", "Eve"),
  Age     = c(20, 23, 21, 25, 22),
  Score   = c(88, 74, 95, 60, 82),
  Grade   = c("B", "C", "A", "D", "B"),
  stringsAsFactors = FALSE
)

filter_and_summarize <- function(df, score_threshold) {
  # Filter rows where Score meets or exceeds the threshold
  filtered_df <- df[df$Score >= score_threshold, ]

  cat("Students with Score >=", score_threshold, ":\n")
  print(filtered_df[, c("Name", "Score")])

  cat("\nAverage score in this group:", mean(filtered_df$Score), "\n")

  return(filtered_df)
}

# Call the function with a threshold of 80
top_students <- filter_and_summarize(students, score_threshold = 80)
```

    ## Students with Score >= 80 :
    ##      Name Score
    ## 1   Alice    88
    ## 3 Charlie    95
    ## 5     Eve    82
    ## 
    ## Average score in this group: 88.33333
