*** Settings ***
Library    SeleniumLibrary
Documentation    tutorial check_uncheck boxes in a website
*** Variables ***
${browser}      Chrome
${link}         https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Keywords ***
Nav_tuto
    open browser    ${link}     ${browser}
    maximize browser window
    sleep   1

Accept_button
    element should be visible    //*[@id="privacy-banner"]
    click element    //a[@id='banner-accept']
    sleep   1

Scroll_element
    #OH BOY THIS ONE TOOK ME 2 HOURS TO FIGURE IT OUT
    Run Keyword And Ignore Error    scroll element into view    //h1[normalize-space()='Webdriver Commands Example']
    sleep   1

*** Test Cases ***
Website_Test
    Nav_tuto
#Accept_button_test
#    accept_button
Scroll_Test
    Scroll_element
Checkbox_Test
    select checkbox     //input[contains(@id, 'hobbies')]
    sleep   2
    unselect checkbox    //input[contains(@id, 'hobbies')]
    select checkbox    //input[contains(@id, 'hobbies')]
    sleep   1
close_browser
    close browser