*** Settings ***
Library    RPA.Desktop

*** Tasks ***
Open Notepad And Write Hello
    Launch Notepad
    Wait For Notepad
    Type Hello
    Save File

*** Keywords ***
Launch Notepad
    Open Application    notepad.exe

Wait For Notepad
    Sleep    2s

Type Hello
    Type Text    Hello

Save File
    Press Keys    ctrl    S
    Sleep    1s
    Type Text    C:\\Users\\vikashgupta03\\OneDrive - Nagarro\\Desktop\\hello.txt
    Press Keys    Enter
    Sleep    1s
