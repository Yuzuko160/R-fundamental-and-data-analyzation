Practice 1: Filtering Rows and Columns
================

This practice covers how to filter rows and select columns from a data
frame based on different criteria.

------------------------------------------------------------------------

## Setup — Create the Dataset

``` r
# Create a sample dataset of students
students <- data.frame(
  Name    = c("Alice", "Bob", "Charlie", "Diana", "Eve"),
  Age     = c(20, 23, 21, 25, 22),
  Score   = c(88, 74, 95, 60, 82),
  Grade   = c("B", "C", "A", "D", "B"),
  stringsAsFactors = FALSE
)

# Preview the full dataset
students
```

    ##      Name Age Score Grade
    ## 1   Alice  20    88     B
    ## 2     Bob  23    74     C
    ## 3 Charlie  21    95     A
    ## 4   Diana  25    60     D
    ## 5     Eve  22    82     B

------------------------------------------------------------------------

## Filter Rows Based on a Condition

``` r
# --- Filter ROWS based on a condition ---

# Filter students with Score greater than 80
high_scorers <- students[students$Score > 80, ]
high_scorers
```

    ##      Name Age Score Grade
    ## 1   Alice  20    88     B
    ## 3 Charlie  21    95     A
    ## 5     Eve  22    82     B

``` r
# Filter students with Age less than or equal to 21
young_students <- students[students$Age <= 21, ]
young_students
```

    ##      Name Age Score Grade
    ## 1   Alice  20    88     B
    ## 3 Charlie  21    95     A

``` r
# Filter using multiple conditions (Score > 70 AND Age < 24)
filtered <- students[students$Score > 70 & students$Age < 24, ]
filtered
```

    ##      Name Age Score Grade
    ## 1   Alice  20    88     B
    ## 2     Bob  23    74     C
    ## 3 Charlie  21    95     A
    ## 5     Eve  22    82     B

------------------------------------------------------------------------

## Select Specific Columns

``` r
# --- Select specific COLUMNS ---

# Select only Name and Score columns
name_score <- students[, c("Name", "Score")]
name_score
```

    ##      Name Score
    ## 1   Alice    88
    ## 2     Bob    74
    ## 3 Charlie    95
    ## 4   Diana    60
    ## 5     Eve    82

``` r
# Select columns by index position (columns 1 and 3)
col_subset <- students[, c(1, 3)]
col_subset
```

    ##      Name Score
    ## 1   Alice    88
    ## 2     Bob    74
    ## 3 Charlie    95
    ## 4   Diana    60
    ## 5     Eve    82

------------------------------------------------------------------------

## Filter Rows and Select Columns Together

``` r
# --- Filter ROWS and select COLUMNS at the same time ---

# Get Name and Score of students who scored above 80
result <- students[students$Score > 80, c("Name", "Score")]
result
```

    ##      Name Score
    ## 1   Alice    88
    ## 3 Charlie    95
    ## 5     Eve    82
