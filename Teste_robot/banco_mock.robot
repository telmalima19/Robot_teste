*** Settings ***
Resource    ../Resources/base.robot
Resource    ../Resources/login_page.robot
Resource    ../Resources/database_mock.resource

Test Tags        cadastro


*** Test Cases *** 

Validar usuário existente no banco (mock)
    
    Conectar no banco
    ${resultado}=    Buscar usuário por email    telma@email.com
    Should Be Equal    ${resultado}    EXISTE