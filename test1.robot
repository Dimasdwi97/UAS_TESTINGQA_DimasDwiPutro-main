*** Settings ***
Library         SeleniumLibrary
# Resource    data.robot
Variables       variabel.py


*** Test Cases ***
Login elearning Gagal
    Open Browser    ${url_elerning}    chrome
    Maximize Browser Window
    Click Element    class=list-inline-item
    Wait Until Element Is Enabled    id=login_username
    Input Text    id=login_username    ${nim2}
    Input Password    id=login_password    ${password2}
    Click Button    class=btn-log

    Page Should Contain    Invalid login, please try again

Login elearning success
    Open Browser    ${url_elerning}    chrome
    Maximize Browser Window
    Click Element    class=list-inline-item
    Wait Until Element Is Enabled    id=login_username
    Input Text    id=login_username    ${nim1}
    Input Password    id=login_password    ${password1}
    Click Button    class=btn-log
