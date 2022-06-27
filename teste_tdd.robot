* Test Cases *
Cenário: GET todos os Usuarios 200
Validar Todos os Usuarios na Response
Validar Status Code "200"

Cenário: GET Usuario Especifico 200
GET Endpoint /usuarios com id "/GGtwearsdw223"
Validar Status Code "200"
Validar Mensagem "Nome = Fulano da Silva"

Cenário: POST Criar Novo Usuario 201 
Criar Usuario Dinamico
Post Usuario Dinamico no Endpoint /Usuarios
Validar Status Code "201"
Validar Mensagem "Cadastro realizado com sucesso"

Cenario: PUT Editar Usuario Existente 200
PUT Editar Usuario com id "/GGtwearsd" usando Dados Dinâmicos
Validar Status Code "200"
Validar Mensagem "Registro alterado com sucesso"

Cenario: DELETE Usuario Existente 200
DELETE Usuario Especifico com id "/GGtwearsdw223"
Validar Status Code "200"
Validar Mensagem "Registro excluido com sucesso | Nenhum registro excluido"


