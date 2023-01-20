*** Settings ***
Documentation  Essa suíte testa o site
Resource       ../resources/main.robot
# Test Setup     Abrir o navegador
#Test Teardown  Fechar o navegador

*** Test Cases ***

Caso de Teste 01 - Preencher formulário
    Abrir o navegador e acessar a página do site Organo
    Preencher os campos do formulário
    Clicar em "Criar Card"
    Identificar o card no time esperado



# Caso de Teste 02 - Verificar mensagem de campo obrigatório
#     Acessar a página do site Organo 
#     Clicar em "Criar Card"