#----------------------------------------#
#Title: Aula 05 - Vectors
#Author: João Chrisóstomo Ribeiro
#----------------------------------------#

# Definindo um vetor 1
meuVetor1 <- c(1,2,3,"b")
meuVetor1
class (meuVetor1)

# Definindo um vetor 2
meuVetor2 <- c(1,2,3,4)
meuVetor2
class (meuVetor2)

# Definindo um vetor 3 - intervalo A:B
meuVetor3 <- 1:8
meuVetor3

# Definindo um vetor 4 - seq() entre A,B
meuVetor4 <- seq(10,20)
meuVetor4

# Definindo um vetor 5 - seq() entre A,B de x em x
meuVetor5 <- seq(10,20,by=2)
meuVetor5

# Definindo um vetor 6 - seq() entre A,B com tamanho x
meuVetor6 <- seq(1.5, 9.9, lenght=20)
meuVetor6

# Definindo um vetor 7 - rep() repete elemento A, x vezes
meuVetor7 <- rep(5 ,3)
meuVetor7

# Definindo um vetor 8 - rep() cada elemento da sequencia é repetido x vezes
meuVetor8 <- rep(1:5, each=3)
meuVetor8

# Definindo um vetor 9 - name(v) <- c(x) cria rótulos
names(meuVetor1) <- c("Coluna 1", "Coluna 2", "Coluna 3", "Coluna B")
meuVetor1

# Visualizar dado do vetor - obj[x] retorna o valor do índice x (ou inverso)
meuVetor1[4]
meuVetor1[-4]

# Adicionar novo valor no final do vetor
meuVetor1[length(meuVetor1)+1] <- "c"

# Remover um valor do vetor // recebe ele mesmo com "filtro"
meuVetor9 <- seq(1,2, length=6)
meuVetor9
meuVetor9 <- meuVetor9[-5]
meuVetor9
meuVetor9 <- meuVetor9[-c(3:5)]
meuVetor9
