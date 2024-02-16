*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Login_url}    https://admin-demo.nopcommerce.com/login
${browser}      headlessChrome
*** Keywords ***
open my browser
    open browser   ${Login_url}     ${browser}
    maximize browser window

close my browsers
    close all browsers

Open login Page
    go to   ${Login_url}

Input a username
    [Arguments]     ${username}
    input text    id:Email      ${username}

Input a password
    [Arguments]    ${password}
    input password    id:Password       ${password}

Click login button
    click element   xpath://button[@type='submit']

Click logout link
    click link      xpath://a[normalize-space()='Logout']

Error Message should be visible
    page should contain    Login was unsuccessful

Dashboard page should contain
    page should contain    Dashboard