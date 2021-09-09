*** Settings ***

Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
HandlingALerts
    Create Webdriver   Chrome    executable_path=drivers/chromedriver
    Go To    http://testautomationpractice.blogspot.com/
    maximize browser window
    click element  xpath://button[normalize-space()='Click Me']
    sleep   2 seconds
   # handle alert    accept
   # handle alert    dismiss
    handle alert    leave

    alert should be present     Press a button!
    Close all browsers
*** Keywords ***
