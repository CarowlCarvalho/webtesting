*** Settings ***
Documentation  Essa suíte testa o site
Resource       organo_resources.robot
Test Setup     Abrir o navegador
#Test Teardown  Fechar o navegador

*** Test Cases ***

Caso de Teste 01 - Acesso ao formulário
    [Documentation]        Esse teste verifica
  
    Acessar a página do site Organo  


# Caso de Teste 02 - Preencher o formulário
    
#     Localizar o formulário e verificar os campos do formulário
#     Preencher os campos do formulário
#     Clicar em "Criar Card"
#     Verificar se os dados foram para adicionados corretamente

# Caso de Teste 03 - Verificar mensagem de campo obrigatório
#     Acessar a página do site Organo 
#     Clicar em "Criar Card"