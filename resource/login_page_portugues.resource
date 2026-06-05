Language: pt-BR

*** Configurações ***
Biblioteca    SeleniumLibrary
Recurso       ../resource/base_portugues.resource

*** Variáveis ***
${BTN_CADASTRAR}      css=[data-testid="cadastrar"]
${CHECK_CADASTRAR}    css=[data-testid="checkbox"]
${CAMPO_NOME}         css=[data-testid="nome"]
${CAMPO_EMAIL}        css=[data-testid="email"]
${CAMPO_SENHA}        css=[data-testid="password"]

*** Palavras-chave ***
Dado que o usuário está na página inicial
    Go To    ${URL}

Quando clicar no botão cadastrar
    Wait Until Element Is Visible    ${BTN_CADASTRAR}    10s
    Click Element                    ${BTN_CADASTRAR}

E marcar cadastro como administrador
    Click Element    ${CHECK_CADASTRAR}

E preencher o campo nome
    [Argumentos]    ${nome}
    Input Text      ${CAMPO_NOME}    ${nome}
    Sleep           2s

E preencher o campo email
    [Argumentos]    ${email}
    Input Text      ${CAMPO_EMAIL}    ${email}
    Sleep           2s

E preencher o campo senha
    [Argumentos]    ${senha}
    Input Text      ${CAMPO_SENHA}    ${senha}
    Sleep           2s