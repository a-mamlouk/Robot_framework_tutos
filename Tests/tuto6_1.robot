*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      headlessChrome
${link}         https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html
*** Keywords ***
Browser
    open browser    ${link}     ${browser}
    sleep    1
    maximize browser window

click_frame
    select frame    packageListFrame    #id name xpath
    click link      org.openqa.selenium
    unselect frame
    sleep    1
    select frame    packageFrame
    click link    WebDriver
    unselect frame
    sleep    1
    select frame    classFrame
    click link    Overview
    unselect frame

*** Test Cases ***

launch_browser_test
    Browser
    sleep    1
multi_frame_test
    click_frame
    sleep    1
Close_browser
    close browser
