*Settings*
Documentation   Keywords e variaveis para ações do endpoint de Produtos

*Variables*
#${token_auth}   Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RlbG9naW5AZ21haWwuY29tIiwicGFzc3dvcmQiOiIxMjMiLCJpYXQiOjE2NTYzMDgyMDUsImV4cCI6MTY1NjMwODgwNX0.W9YgnOGhhkpGlsE2QqXfvTYgge02FU7EwG-4NLHrzf4

*Keywords*
POST Endpoint /produtos
        &{header}       Create dictionary       Authorization=${token_auth}
        &{payload}      Create Dictionary       nome=Tecladopcdomilhao  preco=470       descricao=Razer21         quantidade=100 
        ${response}     POST On Session  serverest  /produtos  data=&{payload}      headers=${header}
        Log to Console  Response: ${response.content}
        Set Global Variable     ${response}

DELETE Endpoint /produtos
        &{header}       Create dictionary       Authorization=${token_auth}
         
        ${response}     DELETE On Session  serverest  /produtos/${id_produto}       headers=${header}
        Log to Console  Response: ${response.content}
        Set Global Variable     ${response}

Validar Ter Criado Produto
        Should be Equal      ${response.json()["message"]}       Cadastro realizado com sucesso
        Should Not Be Empty  ${response.json()["_id"]}

Criar Um Produto e Armazenar ID
        POST Endpoint /produtos
        Validar Ter Criado Produto
        ${id_produto}   Set variable    ${response.json()["_id"]}
        Log to Console  Response: ${response.content}
        Set Global Variable     ${id_produto}

        