*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.ilovepdf.com/pdf_to_word
    Choose File    xpath=//input[@type='file']    C:${/}Users${/}40032395${/}Downloads${/}sai02.pdf
    Sleep    15s
TC2
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.facebook.com/ 
    Input Text    css=#email    jack
    Input Password   css=#pass    we234
    Click Element    css=button[name='login']
    
