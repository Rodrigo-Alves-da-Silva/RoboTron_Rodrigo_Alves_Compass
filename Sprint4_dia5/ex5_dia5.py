#Exercício 5 dia 5 - Construa um programa que recebe 20 valores para X e no final apresenta a média aritmética dos valores pares digitados
media= 0
count=0
mx=0 # variavel para realizar a contagem de  valores pares
while count <20:
    x=int(input ("Informe um valor: "))
    if x%2 == 0:
        media=media + x
        mx += 1
    
    
    count += 1

print (" a média dos valores pares é:", media/mx)