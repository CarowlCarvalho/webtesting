*** Settings ***
Documentation    Test para verificar o funcionamento do formulário caso os campos obrigatórios não sejam preenchidos corretamente
Resource    ../../resources/main.robot

*** Test Cases ***
02 - Verificar se quando um campo obrigatório não for preenchido corretamente o sistema exibe uma mensagem de campo obrigatório
    Dado que eu acesse o Organo
    E clique no botão "Criar Card"
    Então sistema deve apresentar mensagem de campo obrigatório    id:form-nome-erro
    Fechar navegador
