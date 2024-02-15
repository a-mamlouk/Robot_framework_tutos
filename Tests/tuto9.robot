*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}      headlessChrome
${link}         https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Keywords ***
Nav_tuto
    open browser    ${link}     ${browser}
    maximize browser window
    sleep    1
    ${loc}=   get location
    log to console    ${loc}
input
    input text    //input[@placeholder='Username']      Admin
    input text    //input[@placeholder='Password']      admin123
Screenshots
    capture element screenshot  //img[@alt='company-branding']      ./PICS/logo.png
    capture page screenshot    ./PICS/FSlogo.png
*** Test Cases ***
Website_Test
    Nav_tuto
    sleep    1
Input_test
    input
    sleep    1
Screenshots_Test
    screenshots
    sleep    1
close_browser
    close browser