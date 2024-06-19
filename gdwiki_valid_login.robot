*** Settings ***
Documentation       A resource file with reusable keywords and variables.
...
Library             SeleniumLibrary
Resource            resources/mediawiki.robot
Resource            pwd/pwd_gd.resource

*** Variables ***
${SERVER}               wiki.glitchdata.com
${BROWSER}              Firefox
${DELAY}                0
${LOGIN URL}            https://${SERVER}/index.php?title=Special:UserLogin
${WELCOME URL}          https://${SERVER}/index.php/Main_Page
${ERROR URL}            https://${SERVER}/index.php/Special:UserLogin
${LOGIN PAGE TITLE}     Log in - Glitchdata
${WELCOME PAGE TITLE}   Glitchdata


*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    ${VALID WIKI USER}
    Input Password    ${VALID WIKI PASSWORD}
    Submit Credentials
    BuiltIn.Sleep   10s
    Welcome Page Should Be Open
    [Teardown]    Close Browser