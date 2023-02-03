*** Settings ***
Documentation   Exemplos do uso de IF nos testes
Test Setup      Log To Console    ${\n}
Test Teardown   Log To Console    ${\n}


*** Variables ***
${NUMERO}   ${0}


*** Test Case ***
01: Exemplo bloco IF
    IF  ${NUMERO} > 0
        Mostrar mensagem quando o número for maior que zero
        Log  message= Você está vendo essa mensagem porque o bloco IF foi executado e sua condição é verdadeira  console=True
    END

02: Exemplo com dois blocos IF e ELSE
    IF  ${NUMERO} > 0
        Mostrar mensagem quando o número for maior que zero
        Log  message= Você está vendo essa mensagem porque o bloco IF corresponde a condição verdadeira  console=True
    ELSE
        Mostrar mensagem quando o número for menor ou igual a zero
        Log  message= Você está vendo essa mensagem porque o bloco ELSE corresponde a condição falsa  console=True
    END

03: Exemplo blocos IF - ELSE IF
    IF  ${NUMERO} > 0
        Mostrar mensagem quando o número for maior que zero
        Log  message=Você está vendo essa mensagem porque o número [${NUMERO}] é maior que zero !!!!  console=True
    ELSE IF    ${NUMERO} < 0
        Mostrar mensagem quando o número for menor que zero
        Log  message=Você está vendo essa mensagem porque o número [${NUMERO}] é menor que zero!!!!  console=True
    ELSE IF    ${NUMERO} == 0
        Mostrar mensagem quando o número for igual a zero
        Log  message=Você está vendo essa mensagem porque o número [${NUMERO}] é igual a zero!!!!  console=True
    ELSE
        IF  ${NUMERO} == ${EMPTY}
            Fail   A variável número está vazia!
        ELSE
            Fail   A variável ${NUMERO} tem um valor desconhecido!
        END
    END

*** Keywords ***
Mostrar mensagem quando o número for maior que zero
    Log   O número [${NUMERO}] é maior que zero!
    Log To Console    O número [${NUMERO}] é maior que zero!

Mostrar mensagem quando o número for menor que zero
    Log   O número [${NUMERO}] é menor que zero!
    Log To Console    O número [${NUMERO}] é menor que zero!

Mostrar mensagem quando o número for menor ou igual a zero
    Log   O número [${NUMERO}] é menor ou igual a zero!
    Log To Console    O número [${NUMERO}] é menor ou igual a zero!
Mostrar mensagem quando o número for igual a zero
    Log   O número [${NUMERO}] é igual a zero!
    Log To Console    O número [${NUMERO}] é igual a zero!


    

