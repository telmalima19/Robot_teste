*** Settings ***
Resource    ../Resources/base.robot
Resource    ../Resources/login_page.robot

Test Setup       Abrir navegador
Test Teardown    Fechar navegador
Test Tags        cadastro
Test Template   Realizar cadastro como administrador

*** Test Cases ***          NOME      EMAIL                SENHA
Cadastro Administrador 01   Telma    telma@email.com         123456
Cadastro Administrador 02   joses    joses@email.com         123456

*** Keywords ***
Validar clique em cadastrar
    xxxAbrir navegadorxxxxx
    xxxAcessar página inicialxxxx
    xxxClicar em cadastrarxxx
    xxxxxFechar navegadorxxx

Realizar cadastro como administrador
    [Tags]    cadastro
    [Arguments]  ${nome}  ${email}  ${senha} 
    Dado que o usuário está na página inicial
    Quando clicar no botão cadastrar
    E marcar cadastro como administrador
    E preencher o campo nome        ${nome}
    E preencher o campo email   ${email}
    E preencher o campo senha       ${senha}
   