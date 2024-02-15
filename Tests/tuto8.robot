*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}      headlessChrome
${link}         https://www.google.com

*** Keywords ***
Nav_tuto
    open browser    ${link}     ${browser}
    maximize browser window
    sleep    1
    ${loc}=   get location
    log to console    ${loc}

*** Test Cases ***
Website_Test
    Nav_tuto
    sleep    1

go_to_test
    go to    https://www.bing.com
    ${loc}=   get location
    log to console    ${loc}
    sleep    1

go_back_test
    go back
    ${loc}=   get location
    log to console    ${loc}
    sleep    1

close_browser
    close all browsers