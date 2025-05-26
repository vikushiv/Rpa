*** Settings ***
Library    RPA.Desktop
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:8082
${BROWSER}    chrome
${USERNAME}    demo
${PASSWORD}    demo


*** Tasks ***
Open Tasklist and completet a task
    Open Browser    ${URL}    ${BROWSER}


