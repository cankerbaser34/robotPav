*** Settings ***

Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***

MyTestCase

    Create Webdriver    Chrome     executable_path=drivers/chromedriver
   # Open Browser    http://www.practiceselenium.com/practice-form.html  chrome
    Go To       http://automationpractice.com/index.php
    sleep   3 seconds
    maximize browser window

    Create Webdriver    Chrome     executable_path=drivers/chromedriver
    Go to               http://www.practiceselenium.com/practice-form.html
    sleep       4 seconds
    Close all browsers


*** Keywords ***
