*** Settings ***
Library    SeleniumLibrary
Resource    ../resource/base.resource

*** Variables ***
${BTN_CADASTRAR}      css=[data-testid="cadastrar"]
${CHECK_CADASTRAR}    css=[data-testid="checkbox"]
${CAMPO_NOME}         css=[data-testid="nome"]
${CAMPO_EMAIL}        css=[data-testid="email"]
${CAMPO_SENHA}        css=[data-testid="password"]

*** Keywords ***
Dado que o usuário está na página inicial
    Log    Acessando página inicial: ${URL}
    Go To    ${URL}
    Wait Until Page Contains Element    ${BTN_CADASTRAR}    10s
    Capture Page Screenshot
    Log    Página inicial carregada com sucesso

Quando clicar no botão cadastrar
    Log    Clicando no botão Cadastrar
    Wait Until Element Is Visible    ${BTN_CADASTRAR}    10s
    Click Element    ${BTN_CADASTRAR}
    Capture Page Screenshot
    Log    Botão Cadastrar acionado

E marcar cadastro como administrador
    Log    Marcando opção Administrador
    Click Element    ${CHECK_CADASTRAR}
    Capture Page Screenshot
    Log    Opção Administrador selecionada

E preencher o campo nome
    [Arguments]    ${nome}
    Log    Preenchendo nome: ${nome}
    Input Text    ${CAMPO_NOME}    ${nome}
    Sleep    2s
    Capture Page Screenshot
    Log    Campo Nome preenchido com sucesso

E preencher o campo email
    [Arguments]    ${email}
    Log    Preenchendo e-mail: ${email}
    Input Text    ${CAMPO_EMAIL}    ${email}
    Sleep    2s
    Capture Page Screenshot
    Log    Campo E-mail preenchido com sucesso

E preencher o campo senha
    [Arguments]    ${senha}
    Log    Preenchendo senha
    Input Text    ${CAMPO_SENHA}    ${senha}
    Sleep    2s
    Capture Page Screenshot
    Log    Campo Senha preenchido com sucesso