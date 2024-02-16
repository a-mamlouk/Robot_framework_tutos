*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
launchBrowser
    [Arguments]    ${appurl}    ${appbrowser}
    open browser    ${appurl}   ${appbrowser}
    sleep    1
    log to console    ${appurl}
    maximize browser window
    ${title}=    get title
    [Return]    ${title}

