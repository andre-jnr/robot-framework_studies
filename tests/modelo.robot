*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${variavel1}    teste
${variavel2}    12545

*** Keywords ***
Abrir Site do robotframework
  Open Browser   https://robotframework.org   chrome

Abrir site do google
  Open Browser   https://www.google.com/   chrome

Fechar navegador
  Close Browser

*** Test Cases ***
Cenario 1: Acessando o site do robotframework
  Abrir Site do robotframework
  Fechar navegador

Cenario 1: Acessando o site do google
  Abrir site do google
  Fechar navegador