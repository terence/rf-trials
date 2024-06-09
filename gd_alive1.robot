## Glitchdata Site/s Check

*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Test Glitchdata
    ${response}=    GET  https://www.glitchdata.com
    Log    ${response}

Test Glitchtraders
    ${response}=    GET  https://www.glitchtraders.com
    Log    ${response}

Test ApiSpi
    ${response}=    GET  https://www.apispi.com
    Log    ${response}

Test Peaktutors
    ${response}=    GET  https://www.peaktutors.com
    Log    ${response}

Test Peekeats
    ${response}=    GET  https://www.peekeats.com
    Log    ${response}

Test NikNiq
    ${response}=    GET  https://www.nikniq.com
    Log    ${response}

Test Harro
    ${response}=    GET  https://www.harro.com
    Log    ${response}

Test Wikpedia
    ${response}=    GET  https://en.wikipedia.com
    Log    ${response}


