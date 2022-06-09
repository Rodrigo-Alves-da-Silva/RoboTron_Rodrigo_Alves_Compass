#Exercício 2 dia 7 - Pegue o arquivo JSON 1 e printe apenas o nome do time vencedor no terminal
import json

def exibir_json():
    with open("amF0XHEa.json", encoding="utf-8") as partida:
        exibir = json.load(partida)
        return exibir

jsonteste = exibir_json()



for c in jsonteste["copa-do-brasil"]:
        if c["placar_mandante"] > c["placar_visitante"]:
            print (c['time_mandante']['nome_popular'])

        else:
            print()


            
        



  


