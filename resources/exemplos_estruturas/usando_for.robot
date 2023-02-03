*** Settings ***
Documentation   Como fazer LOOPS usando o Robot Framework!!

*** Variables ***
### Indíce da minha lista          0      1        2       3       4       5
@{MINHA_LISTA}                  Mônica  Camila  Larissa  Bruno  Jenifer  Evaldo

*** Test Case ***
Teste de FOR do tipo IN RANGE
    [Documentation]  Cria um loop dentro de acordo com um intervalo pré determinado
    Usando FOR IN RANGE

Teste de FOR do tipo IN
    [Documentation]  Cria um loop que percorrendo uma lista pré determinada
    Usando FOR IN

Teste de FOR do tipo IN ENUMERATE
    [Documentation]  Cria um loop que percorre uma lista pré determinada de acordo com o indíce da lista
    Usando FOR IN ENUMERATE

Teste de Sair do FOR
    [Documentation]  Controlando quando o FOR deve parar antes de terminar todos os LOOPS
    Usando FOR IN com EXIT FOR LOOP IF

*** Keywords ***

Usando FOR IN RANGE
    Log To Console  ${\n}
    FOR  ${CONTADOR}   IN RANGE  0   5
        Log To Console    Minha posição agora é: ${CONTADOR}
        Log   Minha posição agora é: ${CONTADOR}
    END

Usando FOR IN
    Log To Console    ${\n}
    FOR  ${NOME}   IN  @{MINHA_LISTA}
        Log To Console    O nome é: ${NOME}!
        No Operation
    END

Usando FOR IN ENUMERATE
    Log To Console    ${\n}
    FOR   ${INDICE}   ${NOME}   IN ENUMERATE   @{MINHA_LISTA}
        Log To Console    O nome é: ${INDICE} --> ${NOME}!
        No Operation
    END

Usando FOR IN com EXIT FOR LOOP IF
    Log To Console    ${\n}
    FOR   ${INDICE}   ${NOME}   IN ENUMERATE   @{MINHA_LISTA}
        Log To Console    O nome é: ${INDICE} --> ${NOME}!
        Exit For Loop If    '${NOME}'=='Larissa'
    END
