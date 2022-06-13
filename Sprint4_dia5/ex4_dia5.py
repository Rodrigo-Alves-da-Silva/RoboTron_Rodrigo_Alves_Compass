#Exercício 4 dia 5 - Construa um programa que armazena uma idade em uma váriavel e compara, se a idade for maior que 18, apresenta "Maior de idade", se a idade for menor que 12, apresenta 
#################### "Você é uma criança" e se for maior que 12 e menor que 18, apresenta "Você é um adolescente

x=int(input ("Informe a sua idade: "))

if x >= 18:
    print ("Maior de idade!")

elif x <12:
    print ("Você é uma criança!")


else:
    print ("Adolescente")