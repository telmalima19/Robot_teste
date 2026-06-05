*** Settings ***
Resource    ../resource/base.resource
Resource    ../resource/login_page.resource
Resource    ../resource/banco.resource

Test Setup       Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Cadastro com dados do banco sucesso
    Conectar Banco

    ${usuario}=    Buscar Usuario Por Nome    telma

    ${nome}=     Set Variable    ${usuario}[0][0]
    ${email}=    Set Variable    ${usuario}[0][1]
    ${senha}=    Set Variable    ${usuario}[0][2]

    Dado que o usuário está na página inicial
    Quando clicar no botão cadastrar
    E marcar cadastro como administrador
    E preencher o campo nome     ${nome}
    E preencher o campo email    ${email}
    E preencher o campo senha    ${senha}

Cadastro com dados do banco falha
    Conectar Banco

    ${usuario}=    Buscar Usuario Por Nome    leo

    ${nome}=     Set Variable    ${usuario}[0][0]
    ${email}=    Set Variable    ${usuario}[0][1]
    ${senha}=    Set Variable    ${usuario}[0][2]

    Dado que o usuário está na página inicial
    Quando clicar no botão cadastrar
    E marcar cadastro como administrador
    E preencher o campo nome     ${nome}
    E preencher o campo email    ${email}
    E preencher o campo senha    ${senha}

    