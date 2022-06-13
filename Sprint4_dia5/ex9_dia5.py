#Exercício 9 dia 5 - Crie um programa que recebe 15 valores e armazena em uma lista, e no final da execução mostre os valores da lista do ultimo para o primeiro
lista = []
listainv = []
count=0
while count < 15:
    x=int(input ("Informe um valor: "))  
    lista.append(x)

    count += 1
    #função integrada reversed() para inverter uma lista em python
    listainv = list(reversed(lista))


print(listainv)