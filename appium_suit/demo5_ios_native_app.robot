*** Settings ***
Library  AppiumLibrary


*** Test Cases ***
TC1
    ${dic}      Create Dictionary       buildName=khan lt7 New
    ...     projectName=khan project lt7
    ...     userName=masanisaibhargav_mhXe84
    ...     accessKey=38qjokFK9kamwCwgd5N6
    
    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...     platformName=ios
    ...     deviceName=iPhone 11 Pro
    ...     app=bs://04323ba077ba05e310700dab0771d7f22543baa3
    ...     platformVersion=13
    ...     bstack:options=${dic}
   Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Username"]
   Input Text    xpath=//XCUIElementTypeTextField[@name="test-Username"]    standard_user
   Wait Until Page Contains Element    xpath=//XCUIElementTypeSecureTextField[@name="test-Password"]
   Input Text    xpath=//XCUIElementTypeSecureTextField[@name="test-Password"]    secret_sauce
   Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-LOGIN"]
   Click Element    xpath=//XCUIElementTypeOther[@name="test-LOGIN"]
   Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[1]
   Click Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[1]
   Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]
   Click Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]
   Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]
   Click Element    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]
   Input Text    xpath=//XCUIElementTypeTextField[@name="test-First Name"]    john
   Input Text    xpath=//XCUIElementTypeTextField[@name="test-Last Name"]    jo
   Input Text    xpath=//XCUIElementTypeTextField[@name="test-Zip/Postal Code"]    100022
   Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-CONTINUE"]
   Click Element    xpath=//XCUIElementTypeOther[@name="test-CONTINUE"]


    [Teardown]      Close Application
