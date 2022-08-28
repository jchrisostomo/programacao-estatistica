#----------------------------------------#
#Title: Aula 10 - Manipulação de dados
#Author: João Chrisóstomo Ribeiro
#----------------------------------------#

# Instalação de pacotes
# install.packages("readr")   # CSV e TXT
# install.packages("readxl")  #XLS XLSX
# install.packages("dplyr")
# install.packages("tidyr")
# install.packages("openxlsx")

# Definindo diretório
getwd()
setwd("F:/projetos/R/programacao-estatistica")

# Chamada de pacotes
library(readr)
library(dplyr)
library(tidyr)
library(openxlsx)

# Importar base de dados // Planilha CSV
dfBase_csv <-
  read_csv("data/caso.csv")
View(dfBase_csv)

# Operador %>%
# utilizado para fazer com que uma opção ocorra atrás da outra em sequência

#select() - realiza busca nos dados // colunas
dfTeste <- dfBase_csv %>% select(state, city, confirmed)
dfTeste

dfTeste <- dfBase_csv %>% select(-date)
dfTeste

#filter() - realiza bucas nos dados // linha
dfTeste <-
  dfBase_csv %>% filter(state %in% c('MG', 'SP') &
                          confirmed > 3300000)
dfTeste

#mutate() - adiciona novas colunas e preserva as existentes
dfTeste <-
  dfBase_csv %>% select(state, confirmed) %>%
  mutate(confirmed2 = confirmed * 2, nlinha = 1:2838003)
dfTeste

#arrange() - ordenação de resultados
dfTeste <-
  dfBase_csv %>% select(state, confirmed) %>%
  mutate(confirmed2 = confirmed * 2, nlinha = 1:2838003) %>%
  arrange(desc(nlinha))
dfTeste

#group_by() e summarise() - Geralmente funções “group_by()” e “summarise()” são
#utilizadas juntas, pois a primeira função separa a base nos grupos, a segunda
#função sumariza (ou agrega) os grupos aplicando funções matemáticas como media,
#soma, desvio padrão ou simplesmente conta frequência de determinado item
dfTeste <-
  dfBase_csv %>% select(state, confirmed, is_last) %>%
  # filter(is_last %in% TRUE) %>%
  group_by(state) %>%
  summarise(media = mean(confirmed)) %>%
  arrange(desc(media))
dfTeste

#rename() - renomear nome das colunas
dfTeste <-
  dfTeste %>% rename('ESTADO' = state, 'MÉD. CONFIRMADOS' = media)
dfTeste

# Tribble
#
# A tibble: 27 × 2
# ESTADO `MÉD. CONFIRMADOS`
# <chr>               <dbl>
# 1 DF                199417.
# 2 RJ                 16414.
#
# Tibble é definido como um data frame com método de impressão mais adequado,
# além do fato de uma maior facilidade e estabilidade ao se trabalhar com
# grandes volumes de dados textuais (caractere e/ou String).
