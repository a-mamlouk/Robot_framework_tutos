*** Settings ***
Library    SeleniumLibrary
Documentation    tutorial click radio buttons and check boxe in a website
*** Variables ***
${browser}      Chrome
${link}         https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
Website_Test
    Nav_tuto
#Accept_button_test
#    accept_button
#Scroll_Test
#    Scroll_element
Buttons_Test
    Select_buttons
#Checkbox_test
#    Select_checkbox
close_browser
    close browser

*** Keywords ***
Nav_tuto
    open browser    ${link}     ${browser}
    maximize browser window
    sleep   1

#if ad is on
Accept_button
    element should be visible    //*[@id="privacy-banner"]
    click element    //a[@id='banner-accept']
    sleep   1

Scroll_element
    #OH BOY THIS ONE TOOK ME 2 HOURS TO FIGURE IT OUT
    Run Keyword And Ignore Error    scroll element into view    //h1[normalize-space()='Webdriver Commands Example']
    sleep   1

Select_buttons
    Select Radio Button    gender    Male
    sleep    1

Select_checkbox
    Select Checkbox    