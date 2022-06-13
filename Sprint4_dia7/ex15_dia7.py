# Exercício 15 dia 7 - Mostre todos os filmes menos o “The Revenant”.
import pandas as pd

lista_filmes = pd.read_csv("LndbVMRT.csv", encoding="utf-8")



print(lista_filmes.loc[0:87])