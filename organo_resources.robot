*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                    http://localhost:3000/
${CAMPO_NOME}             //input[contains(@placeholder,'Digite seu nome...')]
${CAMPO_CARGO}            //input[contains(@placeholder,'Digite seu cargo...')]
${CAMPO_IMAGEM}           //input[contains(@placeholder,'Digite o endereço da imagem...')]
${CAMPO_TIME}             //div[@class='lista-suspensa'][contains(.,'TimeProgramaçãoFront-EndData ScienceDevopsUX e DesignMobileInovação e Gestão')]
${BOTAO_CARD}             class:botao
${OPCAO_PROGRAMACAO}      //option[contains(.,'Programação')]
${OPCAO_FRONT}            //option[contains(.,'Front-End')]
${OPCAO_DADOS}            //option[contains(.,'Data Science')]
${OPCAO_DEVOPS}           //option[contains(.,'Devops')] 
${OPCAO_UX}               //option[contains(.,'UX e Design')]
${OPCAO_MOBILE}           //option[contains(.,'Mobile')]
${OPCAO_INOVACAO}         //option[contains(.,'Inovação e Gestão')]

*** Keywords ***

Abrir o navegador e acessar a página do site Organo
    Open Browser    ${URL}     browser=chrome
    
    
Preencher os campos do formulário
     Input Text        ${CAMPO_NOME}     Akemi
     Sleep        1s
     Input Text        ${CAMPO_CARGO}    Scuba Team - Princesa Pocahontas
     Sleep        1s
     Input Text        ${CAMPO_IMAGEM}   https://lumiere-a.akamaihd.net/v1/images/pp_pocahontas_princess_upcportalreskin_20694_4a693b5b.jpeg?region=244,0,1560,878&width=960
    # Sleep        1s
     Click Element     ${CAMPO_TIME}  
     Sleep        1s   
     Click Element    ${OPCAO_PROGRAMACAO}
     Sleep        1s 
    

Clicar em "Criar Card"
    Click Element    ${BOTAO_CARD}
    Sleep        10s 
      

# Fechar o navegador
#     Close Browser


    
    

    
