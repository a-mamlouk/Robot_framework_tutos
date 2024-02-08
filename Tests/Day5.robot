*** Settings ***
Library    SeleniumLibrary
Documentation    tutorial click radio buttons and check boxe in a website
*** Variables ***
${browser}      Chrome
${link}         https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${link1}         https://www.youtube.com
*** Keywords ***
Nav_tuto
    open browser    ${link}     ${browser}
    maximize browser window
    sleep   1

Nav_tuto1
    open browser    ${link1}     ${browser}
    maximize browser window
    sleep   1

*** Test Cases ***
Website_Test
    Nav_tuto
Website_Test1
    Nav_tuto1

close_browser
    close all browsers