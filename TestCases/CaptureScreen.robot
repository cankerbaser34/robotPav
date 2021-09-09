*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
Login Tc
    Create Webdriver   Chrome    executable_path=drivers/chromedriver
    Go to       https://opensource-demo.orangehrmlive.com/
    maximize browser window

    capture element screenshot      xpath://div[@id='divLogo']//img     /home/cihan/PycharmProjects/TestProject/screenshots/Logo.png
    capture page screenshot     /home/cihan/PycharmProjects/TestProject/screenshots/LoginTc.png
    input text  txtUsername  Admin
    input text  txtPassword  admin123

    click button    Submit
    sleep   2 seconds
    close all browsers

*** Variables ***
*** Keywords ***
