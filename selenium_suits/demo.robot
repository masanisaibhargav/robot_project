*** Settings ***
Library   SeleniumLibrary
Library   XML

*** Test Cases ***
Tc1
    Open Browser     url=http://google.com/      browser=chrome
    ${actual_title}     Get Title
    Log To Console   ${actual_title}
    Log    ${actual_title}
    Should Be Equal    ${actual_title}    SeleniumLibrary
Tc2
    Open Browser    url=https://rainbow.ltts.com/Pages/Home.aspx    browser=chrome
    Title Should Be    seleniumLibrary
Tc3 
    Open Browser    url=https://www.facebook.com/   browser=chrome
    Input Text    locator=id:email    text=hello@gmail.com
    Input Password    id=pass    password=sai123
    Clear Element    name=login
Tc4
    Open Browser    url=https://www.db4free.net/phpMyAdmin/     browser=chrome
    Input Text    id:input_username    text=sai@gmail.com
    Input Password    id=input_password    password=masani@123
    Clear Element    id=input_go

    
