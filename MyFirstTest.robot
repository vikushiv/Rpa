*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://clickcounter.io/
${BROWSER}    chrome
${CLICK_COUNT}    1000

*** Test Cases ***
Click 1000 Times on ClickCounter.io
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    id=btnPlus1    timeout=10s
    Click Counter Button  ${CLICK_COUNT}
    Close Browser

*** Keywords ***
Click Counter Button
    [Arguments]    ${count}
    FOR    ${i}    IN RANGE    ${count}
        Click Element    id=btnPlus1
        Log    Clicked ${i+1} times
    END
