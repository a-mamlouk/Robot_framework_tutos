*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      headlessChrome
${link}         https://katalon-demo-cura.herokuapp.com/
${Username}     John Doe
${Password}     ThisIsNotAPassword

*** Keywords ***
Nav_cura
    open browser    ${link}     ${browser}
    maximize browser window
    sleep    3
    title should be    CURA Healthcare Service
Log_cura
    element should be visible    //a[@id='btn-make-appointment']
    click link    //a[@id='btn-make-appointment']
    sleep   1
    element should be visible    //input[@id='txt-username']
    element should be enabled    //input[@id='txt-username']
    input text  //input[@id='txt-username']     ${Username}
    element should be visible    //input[@id='txt-password']
    element should be enabled    //input[@id='txt-password']
    input text  //input[@id='txt-password']     ${Password}
    click button    //button[@id='btn-login']
    sleep   2
Disco_cura
    element should be enabled    //a[@id='menu-toggle']
    click link    //a[@id='menu-toggle']
    element should be visible    //a[normalize-space()='Logout']
    sleep   1
    click link    //a[normalize-space()='Logout']

*** Test Cases ***
visit_cura
    Nav_cura
login_cura
    Log_cura
out_cura
    Disco_cura
    sleep    1
    close browser