*** Settings ***
Library    SeleniumLibrary
Documentation    Handling dropdowns and lists in a website
*** Variables ***
${browser}      headlessChrome
${link}         https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Keywords ***
Nav_tuto
    open browser    ${link}     ${browser}
    maximize browser window

Accept_button
    element should be visible    //*[@id="privacy-banner"]
    click element    //a[@id='banner-accept']

Select_drp_dwn
#    select from list by label   state  Australia
#    sleep    3
#    select from list by index    state     2
#    sleep    3
    select from list by value    state     NCR
    sleep    3

Select_list
    select from list by label    selenium_commands      Wait Commands
    sleep    1
    unselect from list by label    selenium_commands      Wait Commands

*** Test Cases ***
Website_Test
    Nav_tuto
    sleep    1

#Accept_button_test
#    accept_button
#    sleep    1

dropdown_Test
    select_drp_dwn
    sleep    1

#list_Test
#    select_list
#    sleep    1
close_browser
    close browser