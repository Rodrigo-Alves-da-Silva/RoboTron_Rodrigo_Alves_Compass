#Sessão para configuração, documentação, imports de arquivos e librarys
* Settings *
Documentation   Arquivo Simples para requisições HTTP em APIs
Library         RequestsLibrary
Resource    ./usuarios_keywords.robot
Resource    ./login_keywords.robot
Resource    ./produtos_keywords.robot
Resource    ./carrinho_keywords.robot
#Resource    ./commom.robot
#Resource    ./commom.robot



#Sessão para setagem de variáveis para utilização

* Variables *


#Sessão para criação dos cenários de teste
*Test Cases*

Cenario: POST cadastros 201
        [tags]  POSTCADASTROS
        Criar Sessao
        Criar Usuario Estatico Valido
        Fazer Login e Armazenar Token
        POST Endpoint /produtos
        Validar Status Code "201"
        
Cenario: GET todos os usuarios 200
    [tags]  GET
    Criar Sessao
    GET Endpoint /usuarios
    Validar Status Code "200"
    Validar Quantidade "${28}"
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

Cenario: POST Realizar Login 200
    [tags]  POSTLOGIN
    Criar Sessao
    POST Endpoint /login
    Validar Status Code "200"

Cenario: POST Criar Produto 201
    [tags]  POSTPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    POST Endpoint /produtos
    Validar Status Code "201"

Cenario: DELETE Excluir Produto 200
    [tags]  DELETEPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    Criar Um Produto e Armazenar ID
    DELETE Endpoint /produtos
    Validar Status Code "200"

Cenario: POST Criar Usuario De Massa Estatica 201
    [tags]  POSTCUE
    Criar Sessao
    Criar Usuario Estatico Valido
    Validar Status Code "201"

Cenario: POST Criar Carrinho 201
    [tags]  POSTCARRINHO
    Criar Sessao
    Fazer Login e Armazenar Token
    Criar Um Carrinho e Armazenar ID
    POST Endpoint /carrinhos
    Validar Status Code "201"

Cenario: POST Criar Usuario de Massa Dinamica 201
    [tags]  POSTCRIARUSUARIODINAMICO
    Criar Sessao
    Cadastrar Usuario Dinamico Valido
    Validar Status Code "201"









#Sessão para criação de Keywords Personalizados


*Keywords*
Criar Sessao
    Create Session  serverest   http://localhost:3000

#Validar Se Mensagem Contem "${palavra}"
 #   Should Contain  ${response.json()["message"]}   ${palavra}

#Printar Conteudo Response
 #   Log to Console      Response: ${response.json()["usuarios"][0]["nome"]} // para listar o nome do usuario na posição 0


### para listar os dados de todos os usuarios cadastrados no get/usuarios

#Printar Conteudo Response 
    #Log to Console      Response: ${response.json()["usuarios"]}



    
               


