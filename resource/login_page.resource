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
    Go To    ${URL}

Quando clicar no botão cadastrar
    Wait Until Element Is Visible    ${BTN_CADASTRAR}    10s
    Click Element    ${BTN_CADASTRAR}

E marcar cadastro como administrador
    Click Element    ${CHECK_CADASTRAR}

E preencher o campo nome
    [Arguments]    ${nome}
    Input Text    ${CAMPO_NOME}    ${nome}
    Sleep   2s

E preencher o campo email
    [Arguments]     ${email}
    Input Text      ${CAMPO_EMAIL}      ${email}
    Sleep   2s
E preencher o campo senha
    [Arguments]    ${senha}
    Input Text     ${CAMPO_SENHA}       ${senha}
    Sleep   2s





