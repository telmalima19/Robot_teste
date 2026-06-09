*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Keywords ***

Criar Sessao Serverest
    Create Session    serverest    ${BASE_URL}

Realizo o cadastro do usuario
    ${body}=    Create Dictionary
    ...    nome=${USUARIO_NOME}
    ...    email=${USUARIO_EMAIL}
    ...    password=${USUARIO_PASSWORD}
    ...    administrador=${ADMINISTRADOR}

    ${RESPOSTA}=    POST On Session    serverest    /usuarios    json=${body}

    Set Suite Variable    ${RESPOSTA}
    Set Suite Variable    ${ID_USUARIO}    ${RESPOSTA.json()}[_id]
    Log To Console    ID: ${ID_USUARIO}

Valido o cadastro realizado com sucesso
    Should Be Equal    ${RESPOSTA.json()}[message]    ${MSG_CADASTRO}

Valido o status code 201
    Should Be Equal As Integers    ${RESPOSTA.status_code}    201

Dado que realizo a consulta do usuario cadastrado
    Log To Console    ID: ${ID_USUARIO}

  ${RESPOSTA}=    GET On Session    serverest    /usuarios/${ID_USUARIO}
    Set Suite Variable    ${RESPOSTA}
Valido a consulta realizada com sucesso
     ${consulta}=    Set Variable    ${RESPOSTA.json()}

    Should Be Equal    ${consulta}[nome]           ${RESPOSTA.json()}[nome]
    Should Be Equal    ${consulta}[email]          ${RESPOSTA.json()}[email]
    Should Be Equal    ${consulta}[password]       ${RESPOSTA.json()}[password]
    Should Be Equal    ${consulta}[administrador]  ${RESPOSTA.json()}[administrador]
    

Valido o status code 200 da consulta
    Should Be Equal As Integers    ${RESPOSTA.status_code}    200
    Log To Console    ID: ${ID_USUARIO}



Dado que realizo a exclusao do usuario cadastrado

    Log To Console    ID: ${ID_USUARIO}

  ${RESPOSTA}=    DELETE On Session    serverest    /usuarios/${ID_USUARIO}
    Set Suite Variable    ${RESPOSTA}

Valido a exclusao realizada com sucesso
    Should Be Equal    ${RESPOSTA.json()}[message]    ${MSG_DELETE}

Valido o status code 200
    Should Be Equal As Integers    ${RESPOSTA.status_code}    200

Valido o status code 200 da consulta apos exclusão
    Should Be Equal As Integers    ${RESPOSTA.status_code}    200
    Log To Console    ID: ${ID_USUARIO}

Valido a consulta apos exclusão
    Should Be Equal    ${RESPOSTA.json()}[message]    ${MSG_CONSULTA_EXCLUSÂO}