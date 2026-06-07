*** Settings ***
Library    RequestsLibrary


*** Variables ***
${BASE_URL}    https://serverest.dev


*** Keywords ***
Criar Sessao Serverest
    Create Session
    ...    serverest
    ...    ${BASE_URL}
    ...    verify=True

