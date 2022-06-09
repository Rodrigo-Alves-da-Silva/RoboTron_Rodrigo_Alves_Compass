
# Exercício 12 dia 7 - Printe somente o nome dos atores que ganharam o Oscar em 1991 e 2016.
import pandas as pd

lista_filmes = pd.read_csv("LndbVMRT.csv", encoding="utf-8")


#selecionando as 10 primerias linhas
print(lista_filmes.query('Year==1991')['Name'])
print(lista_filmes.query('Year==2016')['Name'])