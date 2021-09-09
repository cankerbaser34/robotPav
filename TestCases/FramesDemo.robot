*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Handling Frames
    Create Webdriver   Chrome    executable_path=drivers/chromedriver
    Go to      https://www.selenium.dev/selenium/docs/api/java/index.html?index-all.html
    maximize browser window
    select frame    packageListFrame
    click link      org.openqa.selenium
    unselect frame

    Sleep   2 seconds
    select frame    packageFrame
    click link      WebDriver
    unselect frame

    Sleep   2 seconds
    select frame    classFrame
    click link  Help
    unselect frame
    sleep   4 seconds
    Close all browsers


*** Keywords ***

