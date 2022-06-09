# Exercício 9 dia 7 - Usando Pandas, leia apenas os dados da coluna Age do CSV
import pandas as pd

lista_filmes = pd.read_csv("LndbVMRT.csv", encoding="utf-8", usecols=['Age'])

print(lista_filmes)