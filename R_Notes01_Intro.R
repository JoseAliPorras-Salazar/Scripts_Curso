#TEACHING NOTES 01 ################################################################################
#HOLA MUNDO
###################################################################################################
#R Studio #####
#The Graphical User Interface (GUI) RStudio has 4 windows:
#(1) One for writing the commands (the "script"). Use script for reproducibility.
#(2) One for results and interactive use.
#(3) One for plots, help and packages.
#(4) One showing which objects are resident in the R memory

###################################################################################################
#R as calculator #####

2+2

2*5

12/3

(2*5) + (12/3) - (2/3)

sqrt(25)

2^2

exp(2)

exp(log(1))

log(2*2)

log(2) + log(2)

###################################################################################################
#Writing commands in R #####
#(1) Commands are separated by either a new line or ;
#(2) R is case sensitive: "id" is a different name than "ID"
#(3) The character # at the beginning of a line shows that the text in this line is a comment: It is not executed
#(4) Help can be found on the internet or in R by writing ? followed by the function you want to help about
#Example: ?plot

###################################################################################################
#Objects #####
#Both data and output from analyses can be stored as objects.
#An object could be a COMPONENT, VECTOR, a MATRIX or a DATA FRAME.
#Creating a new object is as easy as typing the object’s name and assigning a value to it.
#There are multiple ways to assign values to objects in R.
#Examples:

result1 <- sqrt(100)

result2 = sqrt(100) #However the operator = is NOT RECOMMENDED

#Wrapping the result = sqrt(100) within parentheses, creates the object "result" and returns the result
#Example:
(result3 <- sqrt(100))

#To remove an object from the Global Environment
rm(result1)

#To remove all the objects from the Global Environment. Global Environment cleaning
rm(list=ls())

#We can see the objects of the current R session memory by using the function ls()
ls()

###################################################################################################
#A vector in R
#A vector is the simplest type of data structure in R. Simply put, a vector is a sequence of data elements of the same basic type. Members of a vector are called Components.
#A vector containing three numeric values 2, 3 and 5 :
c(2,3,5)

#A vector of logical values:
c(TRUE, FALSE, TRUE, FALSE, FALSE)

#The number of members in a vector is given by the length function:
length (c(2,3,5))

#There are several types of vectors, such as :
#(1) Numeric vectors, containing all kind of numbers.
#(2) Integer vectors, containing integer values. (An integer vector is a special kind of numeric vector.)
#(3) Logical vectors, containing logical values (TRUE and/or FALSE)
#(4) Character vectors, containing text
#(5) Datetime vectors, containing dates and times in different formats
#(6) Factors, a special type of vector to work with categories.

#Generating a sequence
#Specify the first and last values separated by a colon or use seq()
0:10
15:5
seq(from = 0, to = 1.5, by = 0.1)
seq(from = 0, to = 1.5, length = 10)

#Generating repeats using rep()
rep(8, 5)
rep(1:4, each = 2)
rep(1:4, each = 2, times = 3)

###################################################################################################
#A matrix in R
#A matrix is a collection of elements of the same data type (numeric, character, or logical) arranged into a fixed number of rows and columns.
#Since you are only working with rows and columns, a matrix is called two-dimensional.

matrix(1:9, byrow = TRUE, nrow = 3)
matrix(1:9, byrow = FALSE, nrow = 3)

#nrow indicates the number of rows

###################################################################################################
#A dataframe in R
#Is a data structure that organizes data into a 2-dimensional table of rows and columns, much like a spreadsheet.
#It is like a table in excel sheets.
#It can contain multiple data types in multiple columns called fields.

A <- c("Sofia", "Valeria", "Sebastian", "Jose")
B <- c(90, 95, 90, 60)
C <- c("AP", "AP", "AP", "PE")

ABECE <- data.frame(A,B,C)

#Data structure
str(ABECE)

#Changing vector type from "character" to "factor"
ABECE$C <- as.factor(ABECE$C) 

#Estimating an average (arithmetic mean)
mean(ABECE$B) #Result 83.75
mean(ABECE$A) #Returns a warning message because only "numeric" vector can be averaged

#How many students passed the exam?
length(ABECE$C == "AP")


