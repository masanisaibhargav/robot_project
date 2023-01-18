*** Settings ***
Library    DateTime

*** Test Cases ***
Tc1
    Log To Console    sai
    Log To Console    bhargav
    Log To Console    reddy
Tc2
    ${name}    Set Variable    sai
    Log To Console    ${name}
Tc3
    ${current date}    Get Current Date
    Log To Console    ${current date}
Tc4
    ${radius}   Set Variable    10
    ${result}   Evaluate    3.14 * ${radius} * ${radius}
    Log To Console    ${result}
Tc5
