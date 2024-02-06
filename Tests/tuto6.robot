*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      headlessChrome
${link}         https://testautomationpractice.blogspot.com/
*** Keywords ***


*** Test Cases ***
Browser
    open browser    ${link}     ${browser}
    sleep    1
    maximize browser window

click_button
    element should be visible    //button[@onclick='myFunction()']
    click element    //button[@onclick='myFunction()']
    sleep    1
    #weird bug :/ !!!
    alert should be present     Press a button!
    sleep    1
    click element    //button[@onclick='myFunction()']
    handle alert    accept  #dismiss
    sleep    1
Close_browser
    close browser
