# exercício 1 dia 7 - Baixe o arquivo do link JSON 1, abra ele no vsCode com Python nomeando-o como partida guarde em uma variável e printe o JSON inteiro no terminal.
import json

with open("amF0XHEa.json", encoding="utf-8") as partida:
    exibir = json.load(partida)
    print(exibir)