#----------------------------------------#
#Title: Aula 08 - Functions
#Author: João Chrisóstomo Ribeiro
#----------------------------------------#


# nome_funcao <- function(parâmetro){
#   <comandos>
#     return(valor retornado)
# }
# Nome_funcao(valor_passado)


# Definindo funcão para calcular a área de uma esfera en função do raio
calculoAreaEsfera <- function(raio){
  volume <- (4*pi)*(raio^2)
  return(volume)
}

# Definindo funcão para calcular o volume de uma esfera en função do raio
calculoVolumeEsfera <- function(raio){
  volume <- (4/3)*pi*(raio^3)
  return(volume)
}

raio <- 1

calculoAreaEsfera(raio)
calculoVolumeEsfera(raio)

