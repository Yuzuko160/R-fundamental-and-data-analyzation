Practice 2: Iteration Constructs — For-Loop and While-Loop
================

This practice covers how to write loops in R to repeat code efficiently.
A **for-loop** iterates over a fixed sequence, while a **while-loop**
keeps running as long as a condition remains TRUE.

------------------------------------------------------------------------

## For-Loop

``` r
# --- FOR LOOP ---
# A for-loop repeats code for each item in a sequence
# Syntax: for (variable in sequence) { body }

# Example 1: Print numbers 1 to 5
for (i in 1:5) {
  cat("Iteration:", i, "\n")
}
```

    ## Iteration: 1 
    ## Iteration: 2 
    ## Iteration: 3 
    ## Iteration: 4 
    ## Iteration: 5

``` r
# Example 2: Loop through a vector of names and print a greeting
names_list <- c("Alice", "Bob", "Charlie")

for (name in names_list) {
  cat("Hello,", name, "!\n")
}
```

    ## Hello, Alice !
    ## Hello, Bob !
    ## Hello, Charlie !

``` r
# Example 3: Use a for-loop to calculate the sum of numbers 1 to 10
total <- 0

for (i in 1:10) {
  total <- total + i   # Add each number to the running total
}

cat("Sum of 1 to 10:", total, "\n")
```

    ## Sum of 1 to 10: 55

------------------------------------------------------------------------

## While-Loop

``` r
# --- WHILE LOOP ---
# A while-loop keeps running as long as a condition is TRUE
# Syntax: while (condition) { body }
# Important: always update a variable inside the loop to avoid running forever

# Example 1: Count up from 1 until reaching 5
count <- 1

while (count <= 5) {
  cat("Count is:", count, "\n")
  count <- count + 1   # Update the counter on each iteration
}
```

    ## Count is: 1 
    ## Count is: 2 
    ## Count is: 3 
    ## Count is: 4 
    ## Count is: 5

``` r
# Example 2: Keep halving a number until it falls below 1
number <- 64

while (number >= 1) {
  cat("Current value:", number, "\n")
  number <- number / 2   # Halve the value on each iteration
}
```

    ## Current value: 64 
    ## Current value: 32 
    ## Current value: 16 
    ## Current value: 8 
    ## Current value: 4 
    ## Current value: 2 
    ## Current value: 1
