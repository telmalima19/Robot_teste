*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://front.serverest.dev/
${BROWSER}    chrome

*** Keywords ***
Abrir navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    tag:body    10s

Fechar navegador
    Capture Page Screenshot
    Close Browser