#----------------------------------------#
#Title: Aula 09 - Entrada de dados
#Author: João Chrisóstomo Ribeiro
#----------------------------------------#

# Instalação de pacotes
# install.packages("readr")   # CSV e TXT
# install.packages("readxl")  #XLS XLSX
# install.packages("openxlsx")

# Definindo diretório
getwd()
setwd("F:/projetos/R/programacao-estatistica")

# Chamada de pacotes
library(readr)
library(readxl)
library(openxlsx)

# Importar base de dados // Planilha CSV
library(readr)
dfBase_csv <- 
  read_csv("data/caso.csv")
View(dfBase_csv)


# Criar arquivo XLSX a partir de um data frame
library(openxlsx)
write.xlsx(dfBase_csv, file = "data/caso.xlsx", sheetName = "CASOS", append = FALSE)

# Importar base de dados // Planilha Excel
library(readxl)
dfBase_xlsx <- read_excel("data/caso.xlsx")
View(dfBase_xlsx)

class(dfBase_xlsx)
class(dfBase_csv)

dfBase_csv$`Nro Circuito`
dfBase_csv[,1]
dfBase_csv[1,]