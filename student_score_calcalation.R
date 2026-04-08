library(readxl)

data <- read_excel("C:/Users/yuzuk/OneDrive/Desktop/2510-2604研究所申請/R practice/student_score.xlsx")

# Preview the first few rows of the dataset (default: first 6 rows)
head(data)

# Check the structure of the dataset (column names, data types)
str(data)

# Get a statistical summary (min, max, mean, etc.)
summary(data)

# Access a specific column (e.g., Age)
data$Age

# Calculate the average of a column (e.g., Score)
mean(data$Score)

# Filter rows where Age > 23
data[data$Age > 23, ]

# Select specific columns after filtering (Name and Score)
data[data$Age > 23, c("Name", "Score")]
