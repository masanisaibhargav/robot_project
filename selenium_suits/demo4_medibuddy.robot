*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
Tc1
    Open Browser         browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    50s
    Go To    url=https://www.medibuddy.in/
    Click Element    link=Login
    Click Element     xpath=//div[@class='coperate']
    Click Element    xpath=//div[@class='coperate']
    Input Text    name=userName    john
    Click Element    xpath=//button[contains(text(),'Proceed')]
    Input Text    name=password    sai@123
    Click Element    xpath=//input[@type='checkbox']
    Click Element    xpath=//button[@type='submit']
    Element Should Contain   xpath=//*contain(text(),'incorrect password')]    You have entered incorrect password.
