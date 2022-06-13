# Exércio 5 dia 7 - Guarde o arquivo JSON 2 nomeando-o como campeonato em uma variável e printe todos os seus dados.

import json

def exibir_json():
    with open("GxdV3pRP.json", encoding="utf-8") as campeonato:
        exibir = json.load(campeonato)
        return exibir

jsonteste = exibir_json()

for c in jsonteste.items():
    print(c)