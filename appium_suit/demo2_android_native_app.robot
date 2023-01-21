*** Settings ***
Library  AppiumLibrary


*** Test Cases ***
TC1
  Open Application    remote_url=http://localhost:4723/wd/hub
  ...   platformName=android
  ...   deviceName=oneplus
  ...   app=C:${/}Users${/}40032395${/}Downloads${/}khan-academy-7-3-2.apk
  Set Appium Timeout    30s
  Wait Until Page Contains Element    xpath=//*[@text='Dismiss']    
  Click Element    xpath=//*[@text='Dismiss']
  Wait Until Page Contains Element    xpath=//*[@content-desc='Settings']
  Click Element    xpath=//*[@content-desc='Settings']
  Wait Until Page Contains Element    xpath=//*[@text='Sign in']
  Click Element    xpath=//*[@text='Sign in']
  Wait Until Page Contains Element    xpath=//*[@text='Sign up with email']
  Click Element    xpath=//*[@text='Sign up with email']
  Wait Until Page Contains Element    xpath=//*[@text='First name']
  Input Text       xpath=//*[@text='First name']        sai
  Wait Until Page Contains Element    xpath=//*[@text='Last name']
  Input Text    xpath=//*[@text='Last name']    reddy
  Wait Until Page Contains Element    xpath=//*[@text='Birthday']
  Click Element    xpath=//*[@text='Birthday']
  Wait Until Page Contains Element    xpath=//*[@text='Jun']
  Click Element    xpath=//*[@text='Jun']
  Wait Until Page Contains Element    xpath=//*[@text='Jun']
  Clear Text    xpath=//*[@text='Jun']
  Input Text    xpath=//*[@resource-id='android:id/numberpicker_input']    Dec
  Wait Until Page Contains Element    xpath=//*[@text='01']
  Click Element    xpath=//*[@text='01']
  Input Text    xpath=(//*[@resource-id='android:id/numberpicker_input'])[2]    30
   Wait Until Page Contains Element    xpath=//*[@text='2000']
  Click Element    xpath=//*[@text='2000']
  Input Text    xpath=(//*[@resource-id='android:id/numberpicker_input'])[3]     1996
  Click Element    xpath=//*[@text='OK']
  Wait Until Page Contains Element    xpath=//*[@text='Email address']
  Input Text   xpath=//*[@text='Email address']     masani@123
  Wait Until Page Contains Element    xpath=//*[@text='Password']
  Input Text   xpath=//*[@text='Password']     sai123
  Wait Until Page Contains Element    xpath=//*[@text='CREATE']
  Click Element   xpath=//*[@text='CREATE']     






  [Teardown]      Close Application