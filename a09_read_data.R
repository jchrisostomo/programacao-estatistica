#----------------------------------------#
#Title: Aula 09 - Entrada de dados
#Author: João Chrisóstomo Ribeiro
#----------------------------------------#

# Instalação de pacotes
# install.packages("readr")   # CSV e TXT
# install.packages("readxl")  #XLS XLSX

# Definindo diretório
getwd()
setwd("F:/projetos/R/programacao-estatistica")

# Chamada de pacotes
library(readr)
library(readxl)

# Importar base de dados // Planilha Excel
library(readxl)
dfBaseGLM_xlsx <-
  read_excel("data/base01.xlsx")

View(dfBaseGLM_xlsx)

# Importar base de dados // Planilha CSV
library(readr)
dfBaseGLM_csv <- read_csv("data/base01.csv")
View(dfBaseGLM_csv)

class(dfBaseGLM_xlsx)
class(dfBaseGLM_csv)

dfBaseGLM_csv$`Nro Circuito`
dfBaseGLM_csv[,1]
dfBaseGLM_csv[1,]