# Exercício 11 dia 7 - Printe o nome do Ator que ganhou o Oscar em 1993
import pandas as pd

lista_filmes = pd.read_csv("LndbVMRT.csv", encoding="utf-8")


#selecionando as 10 primerias linhas
print(lista_filmes.query('Year==1993')['Name'])
