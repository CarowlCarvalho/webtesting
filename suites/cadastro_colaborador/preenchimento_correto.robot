*** Settings ***
Documentation    Casos de teste para verificar o comportamento do sistema quando os dados do formulário são corretamente preenchidos
Resource    ../../resources/main.robot

*** Test Cases ***

 01 - Verificar se ao preencher corretamente o formulário os dados são inseridos corretamente na lista e se um novo card é criado no time escolhido
    Dado que eu acesse o Organo
    E preencha os campos do formulário
    E clique no botão "Criar Card"
    Então identificar o card no time esperado
    Fechar navegador


    
 03 - Verificar se é possível criar mais de um card se preenchermos os campos corretamente
    Dado que eu acesse o Organo
    E preencha os campos do formulário
    E clique no botão "Criar Card"
    Então identificar 3 cards nos times esperados
    Fechar navegador
    
   
      

    