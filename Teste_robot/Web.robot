*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://robotframework.org/

*** Test Cases ***
#Abrir Resources da Documentacao Robot Framework
   # Open Browser    ${URL}    chrome
   # Maximize Browser Window
    #Click Element    xpath=//button[@name='go-to-Resources']
    #Close Browser

Abrir Resources e clicar no botão Built-in 
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Click Element    xpath=//button[normalize-space()='Built-in']
    Input Text    id=tags-filter-input    library
    Sleep    10s
    Click Element    xpath=//a[normalize-space()='DateTime']
    Wait Until Page Contains    A library for handling date and time values.    10s