# Exércio 8  dia 7 - Abra o arquivo CSV com pandas e guarde em uma variável de sua escolha e printe o conteúdo no terminal

import pandas as pd

lista_filmes = pd.read_csv("LndbVMRT.csv", encoding="utf-8")

print(lista_filmes)