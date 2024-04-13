# BIO319 Workshop 3 Script Redo
# Sammi Zhou
# 12.02.2024

# Section 2 - Basic Looping
# Section 2.1 - What is a loop?
# Loop - Loop over something many times/Repeating a set of code
# for() - Function for loop
for(i in 1:5){ # create a for loop that runs 5 times (1 to 5)
  print(i)     # each time the for loop runs, print the value of
}

# Section 2.2 - How does it work?
# The above for() loop runs through the vector of the values 1 to 5 we gave it (1:5)
# Each time it runs, it processes the code between the curly brackets - {}
# i is called an iterable and its value is determined in each loop by the vector we specified (1:5)
# First time the for loop runs, i is 1, the second time i is 2, the third i is 3, and so on until i is 5 in the final loop

x <- 0           # make a new scalar called x with a value of 0
for(i in 1:10){  # create a for loop that runs 10 times (1 to 10)
  x <- x + i     # within our for loop we are adding the value of i to the value of x
}
print(x)
# This code is basically saying 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 = 55
# Created a variable called x that has a value of 0 - X has the value of i and each time the loop runs, the value of i increases from 0

# Section 2.3 - Basic Loop Questions
# Question 1 - Try copying the code into a new script and adding a print(x) command into the loop. What do you see?
x <- 0          
for(i in 1:10){ 
  x <- x + i    
}
print(x)        
# They should see that x prints as 10, as each iteration is adding 1 from a starting point of 0

# Question 2 - Try changing the numbers in the for() function (1:10) to numbers of your choosing multiple times. What do you see?
# x becomes whatever the length of the vector input is

# Question 3 - Try changing the the name of i in the for() function to a name of your choosing and get the loop to 
# They just need to make sure that they change i within the loop as well

# Question 4 - Make a for loop that loops over the numbers 10 to 20, and prints the square of each.
for(i in 10:20) {
  print(i ^ 2)
}
# Basically we are sqauring each number from 10-20

# Section 2.4 - Looping over non-integar vectors
# For loops don’t just take numeric (integer) vectors, they will take vectors of any class
shrek_quote <- c('What', 'are', 'you', 'doing', 'in', 'my', 'swamp')
for(word in shrek_quote){
  print(toupper(word))  
}

# Question 0.1 - Try running the following version of the code where word has been changed to donkey and a numeric vector is used instead of a character vector to the same effect.
for(donkey in 1:length(shrek_quote)){
  print(toupper(shrek_quote[donkey]))  
}

# Question 0.2 - In the above for loop what is the function of each of the following parts: (a) donkey (b) toupper() (c) 1:length() (d) shrek_quote (e) shrek_quote[donkey]?
# Donkey - Iterator
# Toupper - Change the word to uppercase
# 1:length() - A vector from 1 to the length of the shrek quoote to loop over
# shrek_quote - The input vector
# shrek_quote[donkey] - The word (Changes each time the loop runs)

# Section 3 - Saving Outputs
# A common requirement from a loop is to save your outputs
# One way to do this is using an output vector
output <- vector() 
input <- c('red', 'yellow', 'green', 'blue', 'purple')
for(i in 1:length(input)){
  output[i] <- nchar(input[i])
}
print(output)