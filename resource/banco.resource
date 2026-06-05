*** Settings ***
Library    DatabaseLibrary

*** Keywords ***
Conectar Banco
    Connect To Database
    ...    mysql.connector
    ...    robotdb
    ...    root
    ...    root
    ...    localhost
    ...    3306

Buscar Usuario Por Nome
    [Arguments]    ${nome}

    ${resultado}=    Query
    ...    SELECT nome, email, senha FROM usuarios WHERE nome='${nome}'

    RETURN    ${resultado}

Fechar Banco
    Disconnect From Database