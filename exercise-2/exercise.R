# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100)
# Hint: use the `paste()` function to produce the list
employees <- paste("Employee ", 1:100)

# Create a vector of 100 random salaries for the year 2014
# Use the `runif()` function to pick a random number between 40000 and 50000
salaries <- runif(100, 40000, 50000)

# Create a vector of 100 salaries in 2015 that have increased from 2014 by some amount
# Hint: use `runif()` to add a random number to 2014's salaries. Starting from a
# _negative_ number so that salaries may decrease!
new.salaries <- salaries + runif(100, -10000, 10000)

# Create a data.frame 'salaries' by combining the 3 vectors you just made
# Remember to set `stringsAsFactors=FALSE`!
d.frame <- data.frame(employees, salaries, new.salaries, stringsAsFactors = FALSE)

# Create a column 'raise' that stores the size of the raise between 2014 and 2015
d.frame$raise <- d.frame$salaries - d.frame$new.salaries

# Create a column 'got.raise' that is TRUE if the person got a raise
d.frame$got.raise <- d.frame$raise >0

### Retrieve values from your data frame to answer the following questions
### Note that you should get the value as specific as possible (e.g., a single
### cell rather than the whole row!)
View(d.frame)
# What was the 2015 salary of employee 57
d.frame$new.salaries[57]

# How many employees got a raise?
length(which(d.frame$got.raise))

# What was the value of the highest raise?
max(d.frame$raise)

# What was the "name" of the employee who received the highest raise?
d.frame[d.frame$raise == max(d.frame$raise), "employees"]

# What was the largest decrease in salaries between the two years?
min(d.frame$raise)

# What was the name of the employee who recieved largest decrease in salary?
d.frame[d.frame$raise == min(d.frame$raise), "employees"]$employees
# What was the average salary increase?
mean(d.frame$raise)

### Bonus ###

# Write a .csv file of your salaries to your working directory


# For people who did not get a raise, how much money did they lose?


# Is that what you expected them to lose based on how you generated their salaries?
