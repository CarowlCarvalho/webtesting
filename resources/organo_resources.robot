*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                    http://localhost:3000/
${CAMPO_NOME}             id:form-nome
${CAMPO_CARGO}            id:form-cargo
${CAMPO_IMAGEM}           id:form-imagem
${CAMPO_TIME}             class:lista-suspensa
${BOTAO_CARD}             class:botao
${OPCAO_PROGRAMACAO}      //option[contains(.,'Programação')]
${OPCAO_FRONT}            //option[contains(.,'Front-End')]
${OPCAO_DADOS}            //option[contains(.,'Data Science')]
${OPCAO_DEVOPS}           //option[contains(.,'Devops')] 
${OPCAO_UX}               //option[contains(.,'UX e Design')]
${OPCAO_MOBILE}           //option[contains(.,'Mobile')]
${OPCAO_INOVACAO}         //option[contains(.,'Inovação e Gestão')]
${CARD_COLABORADOR}       class:colaborador

*** Keywords ***

Abrir o navegador e acessar a página do site Organo
    Open Browser    ${URL}     browser=chrome
    
    
Preencher os campos do formulário
     Input Text        ${CAMPO_NOME}     Akemi
     Sleep        1s
     Input Text        ${CAMPO_CARGO}    Scuba Team
     Sleep        1s
     Input Text        ${CAMPO_IMAGEM}   https://picsum.photos/200/300

     Click Element     ${CAMPO_TIME}  
     Sleep        1s   
     Click Element    ${OPCAO_PROGRAMACAO}
     Sleep        1s 
    
Clicar em "Criar Card"
    Click Element    ${BOTAO_CARD}
    # Sleep        10s 
      
Identificar o card no time esperado
    Element Should Be Visible    ${CARD_COLABORADOR}
    Sleep        10s
    
# Fechar o navegador
#     Close Browser


    
    

    
