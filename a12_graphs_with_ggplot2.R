#----------------------------------------#
#Title: Aula 11 - Gráficos com ggplot2
#Author: João Chrisóstomo Ribeiro
#----------------------------------------#

# Instalando pacote ggplot2
# install.packages("ggplot2")

# Acessando biblioteca
library(ggplot2)


ggplot(data=iris)


# Gráfico de pontos
ggplot(iris, 
       aes(
         x = Sepal.Length, 
         y = Sepal.Width)) + geom_point()

# Gráfico de pontos + cores
ggplot(iris, 
       aes(
         x = Sepal.Length, 
         y = Sepal.Width,
         colour = as.factor(Species))) + geom_point()

# Gráfico de pontos com as funções xlab(),ylab(), ggtitle() e theme()
ggplot(iris,
       aes(
         x = Sepal.Length,
         y = Sepal.Width,
         colour = as.factor(Species),
         shape = as.factor(Species)
       )) +
  geom_point() + labs(fill = "Species") +
  xlab("Tamanho") +
  ylab("Comprimento") +
  ggtitle("Sépala Iris") +
  theme(
    plot.title = element_text(size = 14,
                              face = "bold"),
    axis.title = element_text(size = 12),
    legend.title = element_blank(),
    legend.text = element_text(size = 10),
    legend.position = "bottom"
  )

# Histograma + função facet_grid()
ggplot(iris, aes(x = Petal.Width)) +
  geom_histogram(bins = 20) +
  labs(x = "Comprimento da Pétala",
       y = "Frequência",
       title = "Iris") + facet_grid( ~ Species)
