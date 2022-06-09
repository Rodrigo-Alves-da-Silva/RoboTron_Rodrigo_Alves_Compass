#Exercício 3 dia 5 - Construa um programa que recebe dois valores, soma esses valores e apresenta se o resultado é par ou impar
x1=int(input ("Informe o primeiro valor: "))
x2=int(input ("informe o segundo valor: "))

if (x1+x2)%2 == 0:
    print (x1+x2, "é par!")

else:
    print (x1+x2, "é ímpar!")
