Language: pt-BR
*** Configurações ***

Biblioteca    SeleniumLibrary

*** Variáveis ***
${URL}        https://front.serverest.dev/
${BROWSER}    chrome

*** Palavras-chave ***
Abrir navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser