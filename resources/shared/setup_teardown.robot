*** Settings ***
Resource     ../main.robot

*** Keywords ***
Acessar o site e preencher o formulário
    Dado que eu acesse o Organo
    E preencha os campos do formulário
    E clique no botão "Criar Card"


