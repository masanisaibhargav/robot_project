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
  Run Keyword And Ignore Error    Wait Until Page Contains Element    android=UiSelector().text("Dismiss")
  Run Keyword And Ignore Error    Click Element   android=UiSelector().text("Dismiss")
  Wait Until Page Contains Element    android=UiSelector().description("Settings")
  Click Element     android=UiSelector().description("Settings")
  Wait Until Page Contains Element    android=UiSelector().textContains("Sign i")       30s
  Click Element    android=UiSelector().textContains("Sign i")
  Wait Until Page Contains Element    android=UiSelector().textContains("Sign up with email")
  Click Element             android=UiSelector().textContains("Sign up with email")
  Wait Until Page Contains Element    android=UiSelector().text("First name")
  Input Text       android=UiSelector().text("First name")       sai
  Wait Until Page Contains Element      android=UiSelector().text("Last name")
  Input Text    android=UiSelector().text("Last name")     reddy
  Wait Until Page Contains Element    android=UiSelector().text("Birthday")
  Click Element    android=UiSelector().text("Birthday")
  Wait Until Page Contains Element     android=UiSelector().text("Jun")
  Click Element        android=UiSelector().text("Jun")
  Wait Until Page Contains Element        android=UiSelector().text("Jun")
  Clear Text        android=UiSelector().text("Jun")
  Input Text        android=UiSelector().resourceId("android:id/numberpicker_input")   Dec
  Wait Until Page Contains Element    android=UiSelector().text("01")
  Click Element     android=UiSelector().text("01")
  Input Text        android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)    30
  Wait Until Page Contains Element    android=UiSelector().text("2000")
  Click Element    android=UiSelector().text("2000")
  Input Text       android=UiSelector(). resourceId("android:id/numberpicker_input").instance(2)      1996
  Click Element    android=UiSelector().text("OK")


  [Teardown]         close application
TC2
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
TC3
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
  &{dic_arg}        Create Dictionary       strategy=android Uiautomator
  ...   selector=UiSelector().text("Art of Asia")
  Execute Script      mobile: scroll    &{dic_arg}
  Click Element     android=UiSelector().text("Art of Asia")

  [Teardown]    Close Application
