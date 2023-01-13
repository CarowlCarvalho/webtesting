*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://organo-dun.vercel.app/
${FORM}    //form

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a página do site Organo
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${FORM}
    

    
