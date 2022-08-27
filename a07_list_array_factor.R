#----------------------------------------#
#Title: Aula 07 - List, Arrary, Factor
#Author: João Chrisóstomo Ribeiro
#----------------------------------------#


# Definindo uma lista
vetor <- c(1:3)
matriz <- matrix(
  data = 1:12,
  nrow = 3,
  ncol = 4,
  byrow = TRUE
)
palavra <- "Chrisóstomo"

lista <- list(vetor, matriz, palavra)
lista

names(lista) <- c("Vetor", "Matriz", "Palavra")

lista$Palavra


# Definindo um array
array3D <- 0
array3D <- array(
  data = 1:24,
  dim = c(4, 3, 2),
  dimnames = list(
    c("Vector1", "Vector2", "Vector3", "Vector4"),
    c("i", "j", "k"),
    c("t(0)", "t(1)")
  )
)

array3D

# Acessa valor do array (linha, coluna, dimensao)
array3D[4, 3, 1]
array3D[4, 3, 2]


# Ordenar e categorizar com factor
mesAno = c(
  "Março",
  "Janeiro",
  "Abril",
  "Fevereiro",
  "Maio",
  "Novembro",
  "Julho",
  "Setembro",
  "Junho",
  "Outubro",
  "Julho",
  "Setembro",
  "Dezembro",
  "Fevereiro",
  "Maio",
  "Novembro",
  "Agosto",
  "Fevereiro",
  "Maio",
  "Novembro",
  "Dezembro",
  "Fevereiro",
  "Maio",
  "Novembro",
  "Março",
  "Janeiro",
  "Abril",
  "Agosto"
)

# Determina quantos níveis // uma para cada elmento único
niveis <- c(
  "Janeiro",
  "Fevereiro",
  "Março",
  "Abril",
  "Maio",
  "Junho",
  "Julho",
  "Agosto",
  "Setembro",
  "Outubro",
  "Novembro",
  "Dezembro"
)

# Define qual o nome de cada nível
# É possível atribuir mais de um nome a cada

legenda <- c(
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
  "0",
  "11",
  "12"
)

mesAnoFactor <- factor(mesAno, levels = niveis, labels = legenda, ordered = is.ordered(mesAnoFactor))
mesAnoFactor


class(mesAno)
class(mesAnoFactor)
table(mesAno)
table(mesAnoFactor)

is.ordered(mesAnoFactor)
as.ordered(mesAnoFactor)
is.factor(mesAnoFactor)
as.factor(mesAnoFactor)
