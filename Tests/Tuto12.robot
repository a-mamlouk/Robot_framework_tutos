*** Settings ***
Library    SeleniumLibrary
Resource        ../Resources_files/Resources.robot

*** Variables ***
${url}     https://www.countries-ofthe-world.com/flags-of-the-world.html
${browser}      chrome

*** Keywords ***
scrolling
    #execute javascript    window.scrollTo(0,1500) //document.body.scrollHeight end of page
    scroll element into view    //td[normalize-space()='Tunisia']

*** Test Cases ***
Launching_test
    ${Page_title}=  launchBrowser   ${url}     ${browser}
    log to console    ${Page_title}
    log     ${Page_title}
Scolling_test
    scrolling
    sleep    3

Close_browser
    close browser
