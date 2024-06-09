*** Settings ***
Library     RequestsLibrary
Library     Selenium2Library
Library     Collections
Suite Setup    Authenticate as Admin


*** Test Cases ***
Demo
    Open Browser  https://www.google.com  ie
    Input Text  id=lst-ib  Hollywood Celebrities
    Click Button  Google Search


*** Keywords ***
Authenticate as Admin
    ${body}    Create Dictionary    username=admin    password=password123
    ${response}    POST    url=https://restful-booker.herokuapp.com/auth    json=${body}
    Log    ${response.json()}
    ${token}    Set Variable    ${response.json()}[token]
    Log    ${token}
    Set Suite Variable    ${token}
