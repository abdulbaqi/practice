# these practics are from DataCamp intermediate course
# on R

"hello" > "Goodbye"
# the above is true because R does comparision alphabatically

# Comparison of logicals
T == F

# Comparison of numerics
(-6 * 14) != (17- 101)

# Comparison of character strings
"useR" == "user"

# Compare a logical with a numeric
T == 1

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)


#On which days did the number of LinkedIn profile views exceed 15?
# Popular days
linkedin>15
#When was your LinkedIn profile viewed only 5 times or fewer?
linkedin<=5
#When was your LinkedIn profile visited more often than your Facebook profile?
linkedin>facebook

# The social data has been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)

# When were the views exactly equal to 13? Use the views matrix to return a logical matrix.
views==13

# For which days was the number of views less than or equal to 14? Again, have R return a logical matrix.
views <= 14

# The linkedin and last variable are already defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)
# Is last under 5 or above 10?
last<5 | last>10
# Is last between 15 (exclusive) and 20 (inclusive)?
last>15 & last<=20


# When did LinkedIn views exceed 10 and did Facebook 
# views fail to reach 10 for a particular day? Use the linkedin and facebook vectors.
linkedin>10 & facebook<10

# When were one or both visited at least 12 times?
linkedin>=12 | facebook>=12


# When is views between 11 (exclusive) and 14 (inclusive)?
views>11 & views<=14


##################### LOOPS #################################

# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Loop version 1
for (l in linkedin){
  print(l)
}



# Loop version 2
for (i in 1:length(linkedin)){
  print(linkedin[i])
}

# The nyc list is already specified
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

# Loop version 1
for (c in nyc){
  print(c)
}



# Loop version 2
for (i in 1:length(nyc)){
  print(nyc[[i]])
}

# Pre-defined variables
rquote <- "r's internals are irrefutably intriguing"
chars <- strsplit(rquote, split = "")[[1]]

# Initialize rcount
rcount <- 0

# Finish the for loop
for (char in chars) {
  if(char=='r'){
    rcount<- rcount+1
  }
  if(char=='u'){
    break
  }
  
}

# Print out rcount
print(rcount)

################## functions #######################
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate average number of views
avg_li <- mean(linkedin)
avg_fb <- mean(facebook)

# Inspect avg_li and avg_fb
print(avg_li)
print(avg_fb)

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate the mean of the sum
avg_sum<- mean(linkedin+facebook)

# Calculate the trimmed mean of the sum
avg_sum_trimmed<- mean(linkedin+facebook, trim=0.2)

# Inspect both new variables
print(avg_sum)
print(avg_sum_trimmed)

# Create a function pow_two()
pow_two <- function(a){
  a*a
}


# Use the function
pow_two(12)

# Create a function sum_abs()
sum_abs <- function(a,b){
  abs(a)+abs(b)
}


# Use the function

sum_abs(-2,3)

# Define the function hello()
hello <- function(){
  print("Hi there!")
  TRUE
}




# Call the function hello()
hello()

# Finish the pow_two() function
pow_two <- function(x, print_info=TRUE) {
  y <- x ^ 2
  if(print_info){
    print(paste(x, "to the power two equals", y))
  }
  return(y)
}

pow_two(3)
pow_two(4, print_info=F)
pow_two(5,F)

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# The interpret() can be used inside interpret_all()
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

# Define the interpret_all() function
# views: vector with data to interpret
# return_sum: return total number of views on popular days?
interpret_all <- function(views, return_sum=T) {
  count <- 0
  
  for (v in views) {
    count <- count + interpret(v)
  }
  
  if (return_sum) {
    count
  } else {
    NULL
  }
}

# Call the interpret_all() function on both linkedin and facebook
interpret_all(linkedin)
interpret_all(facebook)


