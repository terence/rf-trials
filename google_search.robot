*** Settings ***
Library     RequestsLibrary
Library     SeleniumLibrary
Library     Collections
Suite Setup    Authenticate as Admin



*** Test Cases ***
Demo
    Open Browser  https://www.google.com  chrome
    Input Text  id=APjFqb  Hollywood Celebrities
    Click Button  gNO89b
    BuiltIn.Sleep   10s
    [Teardown]    Close Browser



*** Keywords ***
Authenticate as Admin
    ${body}    Create Dictionary    username=admin    password=password123
    ${response}    POST    url=https://restful-booker.herokuapp.com/auth    json=${body}
    Log    ${response.json()}
    ${token}    Set Variable    ${response.json()}[token]
    Log    ${token}
    Set Suite Variable    ${token}
