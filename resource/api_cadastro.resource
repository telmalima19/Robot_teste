*** Settings ***
Library    Collections
Library    RequestsLibrary
Resource    ../resource/api_variaveis.resource

*** Keywords ***
Cadastrar Usuario Administrador
    [Arguments]    ${nome}    ${email}    ${senha}

    ${body}=    Create Dictionary
    ...    nome=${nome}
    ...    email=${email}
    ...    password=${senha}
    ...    administrador=true

    ${response}=    POST On Session
    ...    serverest
    ...    /usuarios
    ...    json=${body}
    ...    expected_status=any

    RETURN    ${response}
  ${id_usuario}=    Set Variable    ${response.json()["_id"]}
    Set Suite Variable    ${ID_USUARIO}    ${id_usuario}
Validar Cadastro Com Sucesso
    [Arguments]    ${response}

    Should Be Equal As Integers
    ...    ${response.status_code}
    ...    201

    Should Be Equal As Strings
    ...    ${response.json()["message"]}
    ...    Cadastro realizado com sucesso

    Dictionary Should Contain Key
    ...    ${response.json()}
    ...    _id

Validar Cadastro Com Falha
    [Arguments]    ${response}

    Should Be Equal As Integers
    ...    ${response.status_code}
    ...    300

    Should Be Equal As Strings
    ...    ${response.json()["message"]}
    ...    Este email já está sendo usado

Validar Exclusao Com Sucesso
    [Arguments]    ${response}

    Should Be Equal As Integers
    ...    ${response.status_code}
    ...    200

    Should Be Equal As Strings
    ...    ${response.json()["message"]}
    ...    Registro excluído com sucesso