#----------------------------------------#
#Title: Aula 06 - Matrix
#Author: João Chrisóstomo Ribeiro
#----------------------------------------#

# Criar matriz com ncol (colunas) e nrow (linhas)
minhaMatriz <- matrix(data = 1:12,
                      nrow = 3,
                      ncol = 4)

minhaMatriz

minhaMatriz <- matrix(
  data = 1:12,
  nrow = 3,
  ncol = 4,
  byrow = TRUE
)

minhaMatriz

# Atribuir nomes nas linhas e colunas de uma matriz
minhaMatriz <- matrix(1:12, nrow = 4, ncol = 3,
                   dimnames = list(
                     c("Vector1",  "Vector2",  "Vector3",  "Vector4"),
                     c("x(m)",  "y(m)",  "t(s)")
                   ))
minhaMatriz

# Acessar elemento da matriz [linha,coluna]
minhaMatriz[2,3]
minhaMatriz[3,2]

# Matriz identidade
# M . M^(-1) = I
matrizM <-
  matrix(
    data = c(4,-5, 3, 1),
    nrow = 2,
    ncol = 2,
    byrow = TRUE
  )
matrizM

matrizInversa <-
  matrix(
    data = c(1/19, 5/19, -3/19, 4/19),
    nrow = 2,
    ncol = 2,
    byrow = TRUE
  )
matrizInversa

matrizIdentidade <- matrizM%*%matrizInversa
matrizIdentidade
