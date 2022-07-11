*Settings*
Documentation   Keywords e variaveis para geração
Library         FakerLibrary

*Keywords*

Criar Dados Usuario Valido
    ${nome}     FakerLibrary.name
    ${email}     FakerLibrary.email
    ${payload}      Create Dictionary   nome=${nome}    email=${email}  password=senha123  administrador=true
    Log to Console  ${payload}
    [return]        ${payload} 
