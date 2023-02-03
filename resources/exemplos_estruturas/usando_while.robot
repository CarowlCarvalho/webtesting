*** Settings ***
Documentation   Suíte para exemplificar o uso de WHILE nos testes       
Test Setup      Log To Console    ${\n}
Test Teardown   Log To Console    ${\n}


*** Variables ***
${NUMERO}  ${5}


*** Test Case ***
Caso de teste exemplo de WHILE
    Usando WHILE para loop

*** Keywords ***
Usando WHILE para loop
    Log To Console    ${\n}
    WHILE  ${NUMERO} <= 10
        Log  Executando esse bloco enquanto o valor da variável número [${NUMERO}] for menor ou igual a 10
        Log To Console  Executando esse bloco enquanto o valor da variável número [${NUMERO}] for menor ou igual a 10
        ${NUMERO}  Set Variable  ${NUMERO+1}
    END
