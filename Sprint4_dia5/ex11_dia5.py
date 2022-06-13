#Exercício 11 dia 5 -  Leia a hora inicial e a hora final de um jogo. A seguir calcule a duração do jogo, 
###################### sabendo que o mesmo pode começar em um dia e terminar em outro, tendo uma duração mínima de 1 hora e máxima de 24 horas. 
###################### Entrada: A entrada contém dois valores inteiros representando a hora de início e a hora de fim do jogo.




def soma_hora(x1, x2):
    hora = x2-x1
    return hora

x1=int(input ("Informe o inicio do jogo: "))
x2=int(input ("informe o final do jogo: "))

if (x1 or x2) > 24:
    print("horario invalido!")
    quit()

else:
    teste=soma_hora(x1, x2)
    print(teste)


            
