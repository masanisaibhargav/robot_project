*** Settings ***

Library    OperatingSystem

*** Test Cases ***
Tc1
    Create Directory    path=c:\\mine\\demo1
Tc2
    Log To Console    c:\\mine\\demo1
    Log To Console    ${CURDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${EXECDIR}
    Log To Console    c:${/}mine${/}demo1
    Log To Console    hi${SPACE}
