*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           http://localhost:8082
${BROWSER}       chrome
${USERNAME}      demo
${PASSWORD}      demo

*** Tasks ***
Open Tasklist and Complete a Task
    Open Browser    ${URL}    ${BROWSER}    
    Maximize Browser Window

    # Check if login is required
    ${login_needed}=    Run Keyword And Return Status    Page Should Contain Element    id=username
    Run Keyword If    ${login_needed}    Perform Login

    # Optional: Try clicking OK if browser password popup appears (will skip if not found)
    ${popup}=    Run Keyword And Return Status    Click Element    xpath=//button[text()='OK']
    Run Keyword If    ${popup}    Log    Clicked OK on popup
    Run Keyword If    not ${popup}    Log    No popup appeared



    Close Browser

*** Keywords ***
Perform Login
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    id=kc-login
