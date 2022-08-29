#----------------------------------------#
#Title: Aula 11 - Gráficos
#Author: João Chrisóstomo Ribeiro
#----------------------------------------#

# carregando dataset

data(iris)
summary(iris)
View(iris)

dfIris <- iris

# Plotando gráfico de pontos

plot(iris$Sepal.Length, iris$Sepal.Width, col = "blue")

plot(
  iris$Petal.Length,
  iris$Petal.Width,
  main =  "Iris Pétalas",
  xlab =  "Comprimento Pétala",
  ylab =  "Largura Pétala",
  col = iris$Species
)

# Plotando gráfico de linha

# criando dados em t
t <- seq(0, 2*pi, length = 100)

# primeira curva - seno
plot(
  t,
  sin(t),
  main = "Seno e Cosseno",
  ylab = "y",
  xlim=c(0, 2*pi),
  type = "l",
  col = "blue",
  xaxt="n" # suprime eixo x
)

# adiciona eixo x
axis(side = 1, at=seq(0, 2*pi, length = 5))

# segunda curva - cosseno
lines(t, cos(t), col = "red")

# legenda
legend("bottomleft",
        c("sin(t)", "cos(t)"),
        fill = c("blue", "red"))


# Plotando um histograma
hist(iris$Sepal.Length,col="orange",
     main= "Tamanho da Sépala Iris",
     xlab= "Sépala",
     ylab = "frequência")

# Plotando vários gráficos
par(mfrow = c(2, 2)) # prepara para receber 4 gráficos (2x2)

for (i in 1:4) {
  # repete o gráfico 4 vezes, 1 para cada coluna de iris
  hist(iris[, i], main = names(iris)[i])
}
par(mfrow = c(1, 1))

# Plotando boxplot
boxplot(
  iris,
  col = c("light blue", "pink", "brown", "light green", "red"),
  main = "data set Iris"
)

# Plotando gráfico de barras

# preparando dados
contagem = table(iris$Species)
dtIris = data.frame(contagem)

# plot
barplot(
  dtIris$Freq,
  names.arg = dtIris$Var1,
  main = "Iris",
  col = dtIris$Var1
)

# Plotando gráfico de pizza 

# preparando dados
contagem2 = table(iris$Species)
nomes2 = levels(iris$Species)
porcent2 = round(contagem2 / sum(contagem2) * 100, 2)

# preparando rótulo
rotulo2 = paste(nomes2, " (", porcent2, "%", ")", sep = "")
pie(
  table(iris$Species),
  labels = rotulo2,
  main = "Iris",
  col = c("red", "blue", "green")
)