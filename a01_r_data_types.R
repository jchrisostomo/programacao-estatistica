#----------------------------------------#
#Title: Aula 01 - R Data Types
#Author: João Chrisóstomo Ribeiro
#----------------------------------------#

# In R, there are 6 basic data types:
# 
# logical
# numeric
# integer
# complex
# character
# raw

### Logical Data Type
bool1 <- TRUE
print(bool1)
print(class(bool1))

bool2 <- FALSE
print(bool2)
print(class(bool2))

is_weekend <- F
print(class(is_weekend))  # "logical"

### Numeric Data Type
# floating point values
weight <- 72.50
print(weight)
print(class(weight))

# real numbers
height <- 147
print(height)
print(class(height))

### Integer Data type
integer_variable <- 147L
print(class(integer_variable))

### Complex Data Type
# 2i represents imaginary part
complex_value <- 3 + 2i

# print class of complex_value
print(class(complex_value))

### Character Data Type
# create a string variable
fruit <- "Maçã"
print(class(fruit))

# create a character variable
my_char <- 'J'
print(class(my_char))

### Raw Data Type
# convert character to raw
raw_variable <- charToRaw("Hello World!")

print(raw_variable)
print(class(raw_variable))

# convert raw to character
char_variable <- rawToChar(raw_variable)

print(char_variable)
print(class(char_variable))