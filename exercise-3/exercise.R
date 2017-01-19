# Load R's "USPersonalExpenditure" dataset using the "data()" function
# This will produce a data frame called `USPersonalExpenditure`
data("USPersonalExpenditure")

# The variable USPersonalExpenditure is now accessible to you. Unfortunately,
# it's not a data frame (it's actually what is called a matrix)
# Test this using the `is.data.frame()` function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable as an argument
# to the `data.frame()` function to convert it a data farm. Do this, storing the
# result in a new variable
usp <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
colnames(usp)

# Why are they so strange? Think about whether you could use a number like 1940
# with dollar notation!

# What are the row names of your dataframe?
rownames(usp)

# Create a column "category" that is equal to your rownames
usp$category <- rownames(usp)

# How much money was spent on personal care in 1940?
usp$X1960[4]

# How much money was spent on Food and Tobacco in 1960?
usp$X1960[1]
View(usp)
# What was the highest expenditure category in 1960?
# Hint: use the `max()` function to find the largest, then compare that to the column
thing <- usp[usp$x1960 == max(usp$X1960)]

# Define a function `DetectHighest` that takes in a year as a parameter, and
# returns the highest spending category of that year


# Using your function, determine the highest spending category of each year
