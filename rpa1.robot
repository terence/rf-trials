*** Settings ***
Library    RPA.Browser.Selenium


*** Variables ***
${USERNAME} xxx
${PASSWORD} xxx


*** Tasks ***
Login as user
    Open available browser    https://peaktutors.com/wp-admin/
    Input text    id:user_login  ${USERNAME}
    Input text    id:user_pass   ${PASSWORD}
    Get Title

