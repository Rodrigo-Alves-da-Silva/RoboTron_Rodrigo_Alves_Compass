# Exércio 6 dia 7 - Faça com que o programa printe apenas os primeiros dados dentro de edicao_atual, fase_atual, rodada_atual usando o JSON 2.

import json

def exibir_json():
    with open("GxdV3pRP.json", encoding="utf-8") as campeonato:
        exibir = json.load(campeonato)
        return exibir

jsonteste = exibir_json()
 

print(jsonteste['edicao_atual'])
print (jsonteste['fase_atual'])
print (jsonteste['rodada_atual'])

