*** Settings ***
Resource    ../resource/api_variaveis.resource
Resource    ../resource/api_cadastro.resource

Test Template    Realizar Cadastro De Administrador

Suite Setup    Criar Sessao Serverest

*** Test Cases ***               NOME     EMAIL                SENHA
Cadastro Administrador 01        Telma    telma@email.com      123456
Cadastro Administrador 02        Joses    joses@email.com      123456
Cadastro Administrador 03        Xjoao    xjoao@email.com      123456

*** Keywords ***
Realizar Cadastro De Administrador
    [Arguments]    ${nome}    ${email}    ${senha}

    ${response}=    Cadastrar Usuario Administrador
    ...    ${nome}
    ...    ${email}
    ...    ${senha}

    Validar Cadastro Com Falha    ${response}