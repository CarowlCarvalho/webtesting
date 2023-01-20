*** Settings ***
Resource    ../main.robot


*** Variables ***
&{home}
...    CAMPO=NOME-id:form-nome
...    CAMPO=CARGO-id:form-cargo
...    CAMPO=IMAGEM-id:form-imagem
...    CAMPO=TIME-class:lista-suspensa
...    BOTAO=CARD-class:botao
...    OPCAO=PROGRAMACAO-//option[contains(.,'Programação')]
...    OPCAO=FRONT-//option[contains(.,'Front-End')]
...    OPCAO=DADOS-//option[contains(.,'Data Science')]
...    OPCAO=DEVOPS-//option[contains(.,'Devops')] 
...    OPCAO=UX-//option[contains(.,'UX e Design')]
...    OPCAO=MOBILE-//option[contains(.,'Mobile')]
...    OPCAO=INOVACAO-//option[contains(.,'Inovação e Gestão')]
...    CARD=COLABORADOR-class:colaborador


*** Keywords ***

Dado que eu acesse o Organo
    Open Browser    ${geral.URL}     ${geral.Browser}
    Maximize Browser Window
    
    
E preencha os campos do formulário
     Input Text        ${geral.CAMPO_NOME}     Akemi
     Sleep        1s
     Input Text        ${home.CAMPO_CARGO}    Scuba Team
     Sleep        1s
     Input Text        ${home.CAMPO_IMAGEM}   https://picsum.photos/200/300

     Click Element     ${home.CAMPO_TIME}  
     Sleep        1s   
     Click Element    ${home.OPCAO_PROGRAMACAO}
     Sleep        1s 
    
E clique no botão "Criar Card"
    Click Element    ${home.BOTAO_CARD}
    # Sleep        10s 
      
Identificar o card no time esperado
    Element Should Be Visible    ${home.CARD_COLABORADOR}
    Sleep        10s
