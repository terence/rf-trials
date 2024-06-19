*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
Library           SeleniumLibrary


*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Log In ‹ Peaktutors — WordPress

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    user_login    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    user_pass    ${password}

Submit Credentials
    Click Button    wp-submit

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    My account | Peaktutors