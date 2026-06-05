*** Settings ***
Library    DatabaseLibrary

*** Test Cases ***
Consultar usuário Telma
    Connect To Database
    ...    mysql.connector
    ...    robotdb
    ...    root
    ...    root
    ...    localhost
    ...    3306

    ${resultado}=    Query
    ...    SELECT * FROM usuarios where nome='telma'

    Log To Console    ${resultado}

    Disconnect From Database