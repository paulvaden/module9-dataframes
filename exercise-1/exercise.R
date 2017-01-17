# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
seahawks.points <- c(20, 31, 31, 26, 5, 40, 10, 24, 31, 25, 26, 20)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
seahawks.allowed <- c(25, 25, 24, 15, 14, 7, 38, 3, 34, 23, 6, 36)

# Combine your two vectors into a dataframe
d.frame <- data.frame(seahawks.points, seahawks.allowed)
# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
d.frame$diff <- d.frame$seahawks.points - d.frame$seahawks.allowed
View(d.frame)
# Create a new column "won" which is TRUE if the Seahawks won
d.frame$won <- d.frame$seahawks.points > d.frame$seahawks.allowed

# Create a vector of the opponent names corresponding to the games played
opponent <- c("saints", "bills", "patriots", "eagles", "Buccaneers", "panthers", "packers", "rams", "cardinals", "49ers", "lions", "falcons")

# Assign your dataframe rownames of their opponents
row.names(d.frame) <- opponent

# View your data frame to see how it has changed!
View(d.frame)
