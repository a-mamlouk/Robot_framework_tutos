*** Settings ***
Library    SeleniumLibrary
Resource        ../Resources_files/Resources.robot

*** Variables ***
${url}      https://demo.guru99.com/test/newtours/
${browser}      Chrome

*** Test Cases ***
TC1
    ${Page_title}=  launchBrowser    ${url}     ${browser}
    log to console    ${Page_title}
    log     ${Page_title}
    sleep    1
    input text    name:userName     mercury
    input text    name:password     mercury
    sleep    1
    close browser

