#----------------------------------------#
#Title: Aula 02 - if/else example
#Author: João Chrisóstomo Ribeiro
#----------------------------------------#

notaProva1 <- 10.0
notaProva2 <- 0.0
notaProva3 <- 8.0

mediaFinal = (notaProva1 + notaProva2 + notaProva3) / 3


if (mediaFinal < 4.0) {
  cat("Reprovado. Média final de", mediaFinal)
} else if (mediaFinal < 6.0) {
  cat("Recuperação. Média final de", mediaFinal)
} else {
  cat("Aprovado. Média final de", mediaFinal)
}