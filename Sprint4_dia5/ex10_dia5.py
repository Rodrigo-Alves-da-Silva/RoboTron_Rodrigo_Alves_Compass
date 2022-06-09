#Exercício 10 dia 5 - Crie um programa que recebe uma lista com três frutas e compare com uma lista com os valores ["maça", "banana", "pera"]
lista = []
lista2 = ["maça", "banana", "pera"]
count=0
while count < 3:
    x=str(input ("Informe a fruta que você quer: "))
    lista.append(x)
    count += 1

# Os sets são uma coleção de itens desordenada, parcialmente imutável e que não podem conter elementos duplicados. 

print("teremos:", set(lista) & set(lista2))




