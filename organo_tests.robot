*** Settings ***
Documentation  Essa suíte testa o site
Resource       organo_resources.robot
# Test Setup     Abrir o navegador
#Test Teardown  Fechar o navegador

*** Test Cases ***

Caso de Teste 01 - Preencher formulário
    Abrir o navegador e acessar a página do site Organo
    Preencher os campos do formulário
    Clicar em "Criar Card"


# Caso de Teste 02 - Preencher o formulário
    
#   
#     Preencher os campos do formulário
#     Clicar em "Criar Card"
#     Verificar se os dados foram adicionados corretamente no formulário

# Caso de Teste 03 - Verificar mensagem de campo obrigatório
#     Acessar a página do site Organo 
#     Clicar em "Criar Card"