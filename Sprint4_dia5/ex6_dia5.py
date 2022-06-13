#Exercício 6 dia 5 - Construa um programa que receba uma valor inteiro maior que 2 em uma variavel x e apresenta os impares entre 0 e x

media= 0
count=0
#mx=0 # variavel para realizar a contagem de  valores impares 
x=int(input ("Informe um valor: "))

if x > 2:
    while count < x:
    
        if x%2 == 1:
         
    
         print(x)
        x -= 1

else:
    print("Valor Invalido!")


