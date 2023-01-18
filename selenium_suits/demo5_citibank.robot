*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
Tc1
    Open Browser         browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    50s
    Go To    url= https://www.online.citibank.co.in/
    Run Keyword And Ignore Error    Click Element    xpath=//a[@class='fancybox-item fancybox-close']
    Click Element    link=Login
    Switch Window    New
    Click Element    xpath=//div[@onclick='ForgotUserID();']
    Click Element    xpath=//a[@class='sbSelector']
    Click Element    xpath=//a[@rel='Credit Card']
    Input Text    name=citiCard1    5130
    Input Text    name=citiCard2    1808
    Input Text    name=citiCard3    2230
    Input Text    name=citiCard4    5692
    Input Text    name=CCVNO    691
    Click Element    id=bill-date-long
    Select From List By Label    xpath=//select[@data-handler='selectYear']     2001
    Select From List By Label    xpath=//select[@data-handler='selectMonth']    May
    Click Element    link=29
    Click Element    xpath=//input[@value='PROCEED']
    Element Should Contain    id=ui-id-1    Please accept Terms and Conditions
    Switch Window       Main
    Close Window
    Sleep    2s
    Close Browser
    
    

     


