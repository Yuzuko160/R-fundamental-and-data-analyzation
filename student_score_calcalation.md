student_score_calculation
================
2026-04-08

``` r
library(readxl)

data <- read_excel("C:/Users/yuzuk/OneDrive/Desktop/2510-2604研究所申請/R practice/student_score.xlsx")


### 🔹 Step 2: Split chunks for outputs
```

``` r
# Preview data
head(data)
```

    ## # A tibble: 5 × 3
    ##   Name      Age Score
    ##   <chr>   <dbl> <dbl>
    ## 1 Alice      23    85
    ## 2 Bob        25    90
    ## 3 Charlie    22    78
    ## 4 David      24    88
    ## 5 Emma       23    92

``` r
# Check the structure of the dataset (column names, data types)
str(data)
```

    ## tibble [5 × 3] (S3: tbl_df/tbl/data.frame)
    ##  $ Name : chr [1:5] "Alice" "Bob" "Charlie" "David" ...
    ##  $ Age  : num [1:5] 23 25 22 24 23
    ##  $ Score: num [1:5] 85 90 78 88 92

``` r
# Get a statistical summary (min, max, mean, etc.)
summary(data)
```

    ##      Name                Age           Score     
    ##  Length:5           Min.   :22.0   Min.   :78.0  
    ##  Class :character   1st Qu.:23.0   1st Qu.:85.0  
    ##  Mode  :character   Median :23.0   Median :88.0  
    ##                     Mean   :23.4   Mean   :86.6  
    ##                     3rd Qu.:24.0   3rd Qu.:90.0  
    ##                     Max.   :25.0   Max.   :92.0

``` r
# Access a specific column (e.g., Age)
data$Age
```

    ## [1] 23 25 22 24 23

``` r
# Calculate the average of a column (e.g., Score)
mean(data$Score)
```

    ## [1] 86.6

``` r
# Filter rows where Age > 23
data[data$Age > 23, ]
```

    ## # A tibble: 2 × 3
    ##   Name    Age Score
    ##   <chr> <dbl> <dbl>
    ## 1 Bob      25    90
    ## 2 David    24    88

``` r
# Select specific columns after filtering (Name and Score)
data[data$Age > 23, c("Name", "Score")]
```

    ## # A tibble: 2 × 2
    ##   Name  Score
    ##   <chr> <dbl>
    ## 1 Bob      90
    ## 2 David    88
