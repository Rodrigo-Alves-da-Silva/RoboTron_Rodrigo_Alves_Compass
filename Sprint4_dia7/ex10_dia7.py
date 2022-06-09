# Exercício 10 dia 7 - Usando Pandas, procure por um dado específico (da sua escolha) e printe somente o mesmo utilizando o CSV.
import pandas as pd

lista_filmes = pd.read_csv("LndbVMRT.csv", encoding="utf-8")



print(lista_filmes.loc[9])