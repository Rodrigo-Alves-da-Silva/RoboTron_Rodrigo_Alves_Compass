#Sessão para configuração, documentação, imports de arquivos e librarys
* Settings *
#Documentation   Arquivo Simples para requisições HTTP em APIs
Library         RequestsLibrary



#Sessão para setagem de variáveis para utilização

* Variables *


#Sessão para criação dos cenários de teste
*Test Cases*
Cenario: GET todos os usuarios 200
    [tags]  GET
    Criar Sessao
    GET Endpoint /usuarios
    Validar Status Code "200"
    Validar Quantidade "${12}"
    Printar Conteudo Response

Cenario: Post Cadastrar Usuario 201
    [tags]  POST
    Criar Sessao
    Post Endpoint /Usuarios
    Validar Status Code "201"
    Validar Se Mensagem Contem "sucesso"

Cenario: PUT Endpoint /usuarios 200
    [tags]  PUT
    Criar Sessao
    PUT Endpoint /usuarios
    Validar Status Code "200"

Cenario: DELETE Endpoint /usuarios 200
    [tags]  DELETE
    Criar Sessao
    Delete Endpoint /usuarios
    Validar Status Code "200"





#Sessão para criação de Keywords Personalizados


*Keywords*
Criar Sessao
    Create Session  serverest   http://localhost:3000

GET Endpoint /usuarios
    ${response}         GET On Session  serverest   /usuarios
    Set Global Variable  ${response}

POST Endpoint /usuarios
    &{payload}  Create Dictionary   nome=jaaagrbos priest   email=tgtrtbatsetst1s11421@gmail.com  password=123    administrador=true
    ${response}         POST On Session  serverest   /usuarios  data=&{payload}
    Log to Console      Response: ${response.content}
    Set Global Variable     ${response}

PUT Endpoint /usuarios
    &{payload}      Create Dictionary   nome=juauba padre   email=twest125sl@gmail.com  password=123    administrador=true
    ${response}     PUT On Session  serverest   /usuarios/JFDaN6vcvWBfcXQA   data=&{payload}
    Log to Console  Response: ${response.content}
    Set Global variable    ${response}

Delete Endpoint /usuarios
    ${response}         Delete On Session  serverest   /usuarios/wmzxESqQAka3YbmL
    Log to Console      Response: ${response.content}
    Set Global Variable     ${response} 


Validar Status Code "${statuscode}"
    Should Be True  ${response.status_code} == ${statuscode}  

Validar Quantidade "${quantidade}"
    Should Be Equal     ${response.json()["quantidade"]}    ${quantidade}

Validar Se Mensagem Contem "${palavra}"
    Should Contain  ${response.json()["message"]}   ${palavra}

#Printar Conteudo Response
   # Log to Console      Response: ${response.json()["usuarios"][0]["nome"]}

Printar Conteudo Response
    Log to Console      Response: ${response.json()["usuarios"]}

    
               


