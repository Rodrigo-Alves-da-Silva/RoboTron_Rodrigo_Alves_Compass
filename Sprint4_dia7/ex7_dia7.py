# Exércio 7 dia 7 - Percorra o JSON 2, utilizando o loop FOR e printe suas chaves principais.
import json

def exibir_json():
    with open("GxdV3pRP.json", encoding="utf-8") as campeonato:
        exibir = json.load(campeonato)
        return exibir

jsonteste = exibir_json()

for c in jsonteste:
    print(c)