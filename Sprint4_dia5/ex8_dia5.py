#Exercício 8 dia 5 - Crie um programa que lê 1 valor inteiro para X. Se o valor for par, calcular o fatorial de x em uma função e apresentar o resultado fora da função. 
##################### Se o valor for impar, apresentar em uma função a tabuada de 1 a 10 de X.


#função para calcular o fatorial
def funcao_fatorial(x):
    fatorial=1
    count=1
    
    while count <= x:
        fatorial *= count 
        count += 1

    return fatorial

#######################################################
#função para montar tabuada
def funcao_tabuada(x):
    tabuada=1
    count=1
    while count <= 10:
        tabuada = x * count
        

        print(x, "x", count, "é: ", tabuada)
        count = count + 1


#seleção
x=int(input ("Informe um valor: "))  
if x%2 == 0:
    teste = funcao_fatorial(x)
    print("o fatorial de", x, "é", teste)  

else:  
    funcao_tabuada(x)




