#Workshop Four - Loops and Functions (Part Two)
#Section 2 - While loops

#Another widely used loop is the ‘while’ loop
#These are employed in a very similar way to for loops, they loop over a section of code within curly brackets {}. Instead of giving loops an object to iterate over (usually a vector), while loops will instead take a conditional statement.
#They continue to loop over the statement while the statement is TRUE

x <- 0
while(x < 5){
  x <- x + 1
  print(paste('The number is now ', x, sep = ''))
}

#Why does the code stop running after 5 iterations?
#The reason why the code stopped after 5 is because x needs to be smaller than 5

#Why does x reach a value of 5 and not 4?
#The reason why x reaches to 5 is because x was 4 and 4 is smaller than 5

#While loops can be very useful in certain situations, particularly if knowing how many times a loop needs to run is not trivial
x <- 1
while(x %% 5 != 0 | x %% 6 != 0 | x %% 7 != 0){
  x <- x + 1
}

print(paste('The lowest number that is a factor of 5, 6, 7 and 8 is ', x, sep = ''))

#What does the logical statement x %% 5 != 0 check in the above code test?
#The x %% 5 ! = 0 checks to see if there is any reminder of x by 5 is not equal to 0

#Why does the code not work if x starts as 0?]
#Because 0/5 is 0 making the loop to be able to run

#Although while loops can clearly be very useful for tasks where we do not know how many iterations the code needs to run for, we need to be extremely careful when running them. While loops can run forever if they are poorly specified

x <- 1
while(x < 10){
  x <- x - 1
}
#This code creates a loop, so we can stop it by using the stop button on the console
#Similarly to for loops, you can use vectors to store the results of a while loop
#Make your own loop that takes a starting value of x <- 0.999 that squares x in each loop until x is less than 0.5.

x <- 0.999
while(x < 10){
  x <- x - 1
}

#Section 3 - Functions
#Section 3.1 - Basic Functions
powers <- function(x){
  y <- x ^ 2
  return(y)
}
powers(1)

powers(30)

powers(5189)

#The basic syntax of creating a function is to define its name (in this case powers) and inputs (in this case x), and then place the code that the function is composed of in the curly brackets. 

powers <- function(x){
  y <- x ^ 2 #y is squaring the value of x
  z <- x ^ 3 #z is cubing the value of x
  return(c( y, z)) #Return the answer in the format of y, z
}
powers(1)

powers(30)

powers(5189)

#Create a function that converts a character scalar of a month into the number of the position of said month in the year (e.g. an input of 'May' will return 5 or an input of 'November' will return 11).
month_converter <- function(month){
  months <- c('January','February','March',
              'April','May','June',
              'July','August','September',
              'October','November','December')
  return(grep(pattern = month, x = months))
}

#Section 4 - Lists
#Lists are similar to vectors, but each element can be any object in R, rather than having to be a scalar
#This means you can make lists of plots, models, vectors, dataframes, even other lists! The subscripting of a list a double square bracket [[]]

quotes <- list()
quotes[[1]] <- c("We're", 'gonna', 'need', 'a', 'bigger', 'boat.')
quotes[[2]] <- c('Never', 'taken', 'a', 'shortcut', 'before?')

quotes

#Copy the above code and try adding your own quotes. Also try accessing different parts of the list with subscripting.

quotes[[3]] <- c("I", 'going', 'to', 'swim.')
quotes

fib <- function(x){ # define a function called fib that takes an input of x
  sequence <- c(x, x) # create a sequence where the first two values are x
  for(i in 3:10){ # loop over 3 to 10 
    sequence[i] <- sequence[i - 1] + sequence[i - 2] # save each position as the sum of the previous two (in positions 3 to 10)
  }
  return(sequence) # return the sequence
}
fib(1) # this returns the standard fibonacci sequence