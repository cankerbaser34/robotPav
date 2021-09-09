*** Settings ***

Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
RegTest
    Create Webdriver  Firefox  executable_path=/home/cihan/Desktop/driversforselenium/drivers/geckodriver
    Go To       http://demowebshop.tricentis.com/register
    maximize browser window
    set selenium timeout      7 seconds
    wait until page contains       Register # 5 secs
    set selenium speed      0.2 seconds
    select radio button     Gender    M
    input text              FirstName   Cihan
    input text      LastName    Bar
    input text  Email   can@baser.com
    input text  Password   canbaser124a
    input text  ConfirmPassword     canbaser124a
    close browser
*** Keywords ***
