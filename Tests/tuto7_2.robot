*** Settings ***
Library    SeleniumLibrary
Documentation    switch between browsers

*** Variables ***
${browser}      headlessChrome

${link}         https://www.google.com
${link2}         https://www.bing.com

*** Keywords ***
Nav_tuto
    open browser    ${link}     ${browser}
    maximize browser window
    sleep    1
    ${title}=   get title
    log to console    ${title}

Nav_tuto2
    open browser    ${link2}     ${browser}
    maximize browser window
    sleep    1
    ${title}=   get title
    log to console    ${title}

*** Test Cases ***
Website_Test
    Nav_tuto
    sleep    1

Website_Test2
    Nav_tuto2
    sleep    1

close_browser
    close all browsers