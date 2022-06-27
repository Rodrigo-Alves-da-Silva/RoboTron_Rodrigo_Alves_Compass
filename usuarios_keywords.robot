*Settings*
Documentation   Keywords e Variaveis para o endpoint de Usuarios
Resource        ./commom.robot

* Variables *
#${nome_do_usuario}  herbet richards
#${senha_do_usuario} teste123
#${email_do_usuario} teste@gmail.com



* Keywords *
GET Endpoint /usuarios
    ${response}         GET On Session  serverest   /usuarios
    Set Global Variable  ${response}

POST Endpoint /usuarios
    #&{payload}  Create Dictionary   nome=${nome_do_usuario}   email=${email_do_usuario}  password=${senha_do_usuario}    administrador=true
    ${response}         POST On Session  serverest   /usuarios  json=&{payload}
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



Validar Quantidade "${quantidade}"
    Should Be Equal     ${response.json()["quantidade"]}    ${quantidade}

Validar Se Mensagem Contem "${palavra}"
    Should Contain  ${response.json()["message"]}   ${palavra}

Printar Conteudo Response
    Log to Console      Response: ${response.json()["usuarios"][0]["nome"]} // para listar o nome do usuario na posição 0

Criar Usuario Estatico Valido
    ${json}   Importar JSON Estatico  json_usuario_ex.json
    ${payload}  Set Variable     ${json["user_invalido"]}
    Set Global Variable     ${payload}
    POST Endpoint /usuarios
