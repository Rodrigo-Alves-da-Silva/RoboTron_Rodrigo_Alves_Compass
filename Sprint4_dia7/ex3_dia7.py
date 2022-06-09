#Exercício 3 dia 7 - Do JSON 1 Guarde apenas o Nome do Estádio, o Placar e o Status do jogo dentro de variáveis e mostre-as.
import json

def exibir_json():
    with open("amF0XHEa.json", encoding="utf-8") as partida:
        exibir = json.load(partida)
        return exibir

jsonteste = exibir_json()



for c in jsonteste["copa-do-brasil"]:

    placarjogo=c['placar']
    estadiojogo=c['estadio']['nome_popular']
    statusjogo=c['status']

print("O nome do Estádio é:", estadiojogo)
print("O placar do jogo foi:", placarjogo)
print("O jogo está:", statusjogo)
        


        

