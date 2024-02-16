*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}      Chrome
${link}         https://testautomationpractice.blogspot.com/
${link2}        http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html

*** Keywords ***
Nav_tuto
    open browser    ${link}     ${browser}
    maximize browser window
    sleep    1
    ${loc}=   get location
    log to console    ${loc}

double_click
    double click element    //button[normalize-space()='Copy Text']

grab_drop
    go to   ${link2}
    drag and drop    id:box1    id:box101


*** Test Cases ***
Website_Test
    Nav_tuto
    sleep    1

double_click_test
    double_click
    sleep    1

Grab_drop_test
    grab_drop
    sleep    2
close_browser
    close browser