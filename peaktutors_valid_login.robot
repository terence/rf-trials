*** Settings ***
Documentation     A Wordpress test suite for Peaktutors website
...
Resource            resources/wordpress.robot
Resource            pwd/pwd_pt.resource

*** Variables ***
${SERVER}         peaktutors.com
${BROWSER}        Firefox
${DELAY}          0
${LOGIN URL}      https://${SERVER}/wp-admin/
${WELCOME URL}    https://${SERVER}/my-account/
${ERROR URL}      https://${SERVER}/error.html



*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    ${VALID USER}
    Input Password    ${VALID PASSWORD}
    Submit Credentials
    BuiltIn.Sleep   10s
    Welcome Page Should Be Open
    [Teardown]    Close Browser