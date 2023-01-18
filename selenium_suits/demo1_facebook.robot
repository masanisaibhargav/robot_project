*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
Tc1 Register
    Open Browser    url=https://www.facebook.com/   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    link=Create New Account
    Input Text    name=firstname    sai
    Input Text    name=lastname    masani
    Input Password    id=password_step_input   masani@123
    # 29 may 2001
    Select From List By Label    id=day     20
    Select From List By Label    id=month   May
    Select From List By Label    id=year    2001
    Click Element     xpath=//input[@value="2"]
    Click Element    locator

