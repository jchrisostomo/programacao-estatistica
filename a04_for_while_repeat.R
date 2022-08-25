#----------------------------------------#
#Title: Aula 04 - Switch Example
#Author: João Chrisóstomo Ribeiro
#----------------------------------------#

# FOR
varTexto <- c("V","E","R","T","I","C","A","L")

for (letra in varTexto) {
  print(letra)
}

# WHILE
numTesteWhile <- 5

while (numTesteWhile > 0) {
  print(numTesteWhile)
  numTesteWhile <- numTesteWhile - 1
}

# REPEAT
numTesteRepeat <- 1

repeat {
  print(numTesteRepeat)
  numTesteRepeat<- numTesteRepeat + 1
  if (numTesteRepeat > 13) break()
}

