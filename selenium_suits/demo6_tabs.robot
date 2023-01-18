*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
Tc1
    Open Browser         browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    50s
    Go To    url=https://www.db4free.net/
    Click Element    partial link=phpMyAdmin
    Switch Window       phpMyAdmin
    Input Text    id:input_username    text=sai@gmail.com
    Input Password    id=input_password    password=masani@123
    Close Window

