*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
Tc1
    Open Browser         browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    50s
    Go To    url=http://demo.openemr.io/b/openemr/
    Input Text    name=authUser    admin
    Input Password    name=clearPass    pass
    Select From List By Label    name=languageChoice        English (Indian)
    Click Element    id=login-button
    Mouse Over    xpath=//div[@class='menuLabel px-1 dropdown-toggle oe-dropdown-toggle']
    Click Element    xpath=//div[text()='New/Search']
    Select Frame    xpath=//iframe[@name='pat']
    Select From List By Label    name=form_title    Mr.
    Input Text    id=form_fname    sai
    Input Text    id=form_mname    bhargav
    Input Text    id=form_lname    reddy
    Input Text    id=form_suffix    masani
    Input Text    name=form_DOB    24-01-2023
    Select From List By Label    name=form_sex      Male
    Click Element    id=create
    Unselect Frame
    Select Frame    xpath=//iframe[@id='modalframe']
    Click Element    xpath=//input[@onclick='dlgclose("srcConfirmSave", false);']
    Sleep    15s
    ${alert_text}    Handle Alert   action=ACCEPT
    Log To Console     ${alert_text}
    Click Element    xpath=//div[@class='closeDlgIframe']
    Select Frame    xpath=//iframe[@name='pat']
    Element Should Contain    xpath=//h2[contains(text(),'Medical Record Dashboard')]        sai bhargav reddy masani