# Exércio 4 dia 7 - No JSON 1 printe todas as chaves e valores do time visitante

import json

def exibir_json():
    with open("amF0XHEa.json", encoding="utf-8") as partida:
        exibir = json.load(partida)
        return exibir

jsonteste = exibir_json()



for c in jsonteste["copa-do-brasil"]:
    print (c['time_visitante'])
    