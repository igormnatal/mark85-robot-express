*** Settings ***
Documentation            Ações e elementos do cabeçalho do Mark85

Library                  Browser
Library                  String

*** Keywords ***
User should be logged in
    [Arguments]    ${name}

    ${splitted_name}    Split String    ${name}
    ${element}    Set Variable    css=header .right small
    Wait For Elements State    ${element} 
    ...    visible    5
    
    Get Text    ${element}    equal    Olá, ${splitted_name}[0]

Go to task form
    Click    css=.button-add