*** Settings ***
Documentation        Ações e elementos do componente de notificações

Library              Browser

*** Keywords ***
Notice should be
    [Arguments]    ${text_expected}

    ${element}            Set Variable          css=.notice p   
    Wait For Elements State           ${element}     visible    5
    Get Text                          ${element}     equal      ${text_expected}