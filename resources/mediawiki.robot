*** Settings ***
Documentation     A resource file with reusable keywords
...
Library           SeleniumLibrary


*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    ${LOGIN PAGE TITLE}
    
Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]     ${username}
    Input Text      wpName1    ${username}

Input Password
    [Arguments]     ${password}
    Input Text      wpPassword1    ${password}

Submit Credentials
    Click Button    wpLoginAttempt

Welcome Page Should Be Open
    Location Should Be  ${WELCOME URL}
    Title Should Be     ${WELCOME PAGE TITLE}
    