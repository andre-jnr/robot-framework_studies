*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${input_user}        id:uid
${input_password}    id:passw
${button_submit}     name:btnSubmit

*** Keywords ***
abrir navegador e acessar site
    Open Browser    https://demo.testfire.net/login.jsp    chrome

preencher campos
    Input Text    ${input_user}         Andre
    Input Text    ${input_password}     Junior

clicar em button
    Click Element   ${button_submit}

fechar navegador
    Close Browser

*** Test Cases ***
cenario 1: Preencher formulario
    abrir navegador e acessar site
    preencher campos
    clicar em button
    fechar navegador
