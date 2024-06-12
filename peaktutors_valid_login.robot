*** Settings ***
Documentation     A test suite with a single test for valid login.
...
Resource            resources/resource.robot
Resource            pwd/password.resource

#Variables           password.resource

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    ${VALID USER}
    Input Password    ${VALID PASSWORD}
    Submit Credentials
    BuiltIn.Sleep   10s
    Welcome Page Should Be Open
    [Teardown]    Close Browser