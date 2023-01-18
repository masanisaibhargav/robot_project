*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
Tc1
    Open Browser    url=https://www.goto.com/meeting/       browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    50s
    Click Element    id=truste-consent-button
    Click Element    link=Try Free
    Input Text    name=FirstName    john
    Input Text    name=LastName    wick
    Input Text    id=login__email    masanisai01@gmail.com
    Input Text    name=PhoneNumber    7894561230
    Input Text    id=login__password    sai123
    Input Text    name=CompanySize

