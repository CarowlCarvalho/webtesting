*** Settings ***
Resource    ../main.robot


*** Variables ***
&{home}
...    CAMPO_NOME=id:form-nome
...    CAMPO_CARGO=id:form-cargo
...    CAMPO_IMAGEM=id:form-imagem
...    CAMPO_TIME=class:lista-suspensa
...    BOTAO_CARD=id:form-botao 
...    CARD_COLABORADOR=class:colaborador

@{selecionar_time}
...    //option[contains(.,'Programação')]
...    //option[contains(.,'Front-End')]
...    //option[contains(.,'Data Science')]
...    //option[contains(.,'Devops')] 
...    //option[contains(.,'UX e Design')]
...    //option[contains(.,'Mobile')]
...    //option[contains(.,'Inovação e Gestão')]



*** Keywords ***

Dado que eu acesse o Organo
    Open Browser    ${geral.URL}     ${geral.Browser}
    Maximize Browser Window
    
    
E preencha os campos do formulário
     ${Nome}           FakerLibrary.FirstName    
     Input Text        ${home.CAMPO_NOME}     ${Nome} 
     ${Cargo}           FakerLibrary.Job     
     Input Text        ${home.CAMPO_CARGO}    ${Cargo}
     ${Imagem}         FakerLibrary.ImageUrl    width=100    height=100  
     Input Text        ${home.CAMPO_IMAGEM}   ${Imagem} 

     Click Element     ${home.CAMPO_TIME}  
     
     Click Element    ${selecionar_time[0]}
    #  Sleep        10s 
    
E clique no botão "Criar Card"
    Click Element    ${home.BOTAO_CARD}
    #  Sleep        10s 
      
Então identificar o card no time esperado
    Element Should Be Visible   ${home.CARD_COLABORADOR}
    Sleep        10s


Então sistema deve apresentar mensagem de campo obrigatório
    [Arguments]    ${nome_do_campo}
    Element Should Be Visible    ${nome_do_campo}    
    Sleep     05s

Então identificar 3 cards nos times esperados

    FOR    ${i}    IN RANGE    1    3   
        
        E preencha os campos do formulário
        E clique no botão "Criar Card"
    END
    Sleep     10s
        