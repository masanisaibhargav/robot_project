*** Settings ***
Library  AppiumLibrary


*** Test Cases ***
TC1
  Open Application    remote_url=http://localhost:4723/wd/hub
  ...   platformName=android
  ...   deviceName=oneplus
  ...   appPackage=org.khanacademy.android
  ...   appActivity=org.khanacademy.android.ui.library.MainActivity
  ...   noReset=true
  Set Appium Timeout    30s
  Run Keyword And Ignore Error    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']
  Run Keyword And Ignore Error    Click Element    xpath=//*[@text='Dismiss'] 
  Wait Until Page Contains Element    xpath=//*[@text='Search']
  Click Element      xpath=//*[@text='Search']
  Wait Until Page Contains Element      xpath=//*[@text='Arts and humanities']
  Click Element     xpath=//*[@text='Arts and humanities']
  ${count}      Get Matching Xpath Count    xpath=//*[@text='Art of Asia']
  WHILE    ${count}==0
      Swipe By Percent    90    75    90    25
      ${count}      Get Matching Xpath Count    xpath=//*[@text='Art of Asia']
  END
  Wait Until Page Contains Element    xpath=//*[@text='Art of Asia']
  Click Element     xpath=//*[@text='Art of Asia']
   ${count}      Get Matching Xpath Count    xpath=//*[@text='South Asia']
  WHILE    ${count}==0
      Swipe By Percent    90    75    90    25
      ${count}      Get Matching Xpath Count     xpath=//*[@text='South Asia']
  END
  Wait Until Page Contains Element     xpath=//*[@text='South Asia']
  Click Element      xpath=//*[@text='South Asia']
  [Teardown]    Close Application
TC2:
      Open Application    remote_url=http://localhost:4723/wd/hub
  ...   platformName=android
  ...   deviceName=oneplus
  ...   appPackage=com.poshmark.app
  ...   appActivity=com.poshmark.ui.MainActivity
  ...   noReset=true
  Set Appium Timeout    30s
  Wait Until Page Contains Element    xpath=//*[@text='Continue with Phone Number']
  Click Element     xpath=//*[@text='Continue with Phone Number']
  Wait Until Page Contains Element    xpath=//*[@text='073961 65692']
  Click Element    xpath=//*[@text='073961 65692']










  [Teardown]        Close Application
