*** Settings ***
Library  AppiumLibrary


*** Test Cases ***
TC1
  Open Application    remote_url=http://localhost:4723/wd/hub
  ...   platformName=android
  ...   deviceName=oneplus
  ...   app=C:${/}Users${/}40032395${/}Downloads${/}khan-academy-7-3-2.apk
  Wait Until Page Contains Element    xpath=//*[@text='Dismiss']
  Click Element    xpath=//*[@text='Dismiss']
  Wait Until Page Contains Element    xpath=//*[@text='Sign in']
  Click Element    xpath=//*[@text='Sign in']
  Wait Until Page Contains Element    xpath=//*[@text='Sign in']
  Click Element    xpath=//*[@text='Sign in']
  Input Text    xpath=//*[@text='Enter an e-mail address or username']    masani@gmail.com
  Input Text    xpath=//*[@text='Password']      sai123
  Wait Until Page Contains Element    xpath=(//*[@text='Sign in'])[2]
  Click Element    xpath=(//*[@text='Sign in'])[2]
  Wait Until Page Contains Element    xpath=//*[@text='There was an issue signing in']
  Element Should Contain Text    xpath=//*[@text='There was an issue signing in']       There was an issue signing in
  [Teardown]        Close Application
   