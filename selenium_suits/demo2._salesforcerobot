*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    50s
    Go To   url= https://www.salesforce.com/in/form/signup/freetrial-sales/
    Input Text    name=UserFirstName   john
    Input Text    name=UserLastName    wick
    Input Text    name=UserEmail    masanisai01@gmail.com
    Select From List By Label    name=UserTitle     IT Manager
    Input Text    name=CompanyName    LTTS
    Select From List By Label    name=CompanyEmployees      101 - 500 employees
    #Input Text    name=UserPhone    7396165692
    Click Element    xpath=//div[@class='checkbox-ui'][1]
    Click Element    name=start my free trial
    Element Text Should Be    xpath=//span[contain(@id,'userphone number    Enter valid phone number
    

    