* Settings *
Documentation       keywords e variaveis /carrinho
Library             RequestsLibrary

* Variables *
${token_auth}            

* Keywords *
GET Endpoint /carrinhos
    ${response}         GET On Session  serverest   /carrinhos
    Set Global Variable  ${response}


POST Endpoint /carrinhos
        &{header}       Create Dictionary       Authorization=${token_auth}
        &{payload}      Create Dictionary       idProduto=BeeJh5lz3k6kSIzA      quantidade=1 
        ${response}     POST On Session  serverest  /carrinhos  data=&{payload}      headers=${header}
        Log to Console  Response: ${response.content}
        Set Global Variable     ${response}

Criar Um Carrinho e Armazenar ID
    POST Endpoint /carrinhos
    ${id_produto}               Set Variable               ${response.json()["_id"]}
    Log To Console              ID Produto: ${id_produto}
    Set Global Variable         ${id_produto}

