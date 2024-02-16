*** Settings ***
Library    SeleniumLibrary
Documentation    switich between windows

*** Variables ***
${browser}      Chrome
${link}         https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Keywords ***
Nav_tuto
    open browser    ${link}     ${browser}
    maximize browser window

Web_element
    click element   //*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[3]/div[2]/p[2]/a
    sleep    3
    #previously select window not in library anymore
    switch window    OrangeHRM


*** Test Cases ***
Website_Test
    Nav_tuto
    sleep    1

Element_Test
    web_element
    sleep    1

close_browser
    close all browsers