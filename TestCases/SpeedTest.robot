*** Settings ***

Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Registeration Form Test


    ${spead}=   get selenium speed
    log to console  ${spead}
    Create Webdriver  Firefox  executable_path=/home/cihan/Desktop/driversforselenium/drivers/geckodriver
    Go To       http://demowebshop.tricentis.com/register
    maximize browser window

    set selenium speed      0.2 seconds
    select radio button     Gender    M
    input text              FirstName   Cihan
    input text      LastName    Bar
    input text  Email   can@baser.com
    input text  Password   canbaser124a
    input text  ConfirmPassword     canbaser124a

     ${spead}=   get selenium speed
    log to console  ${spead}
    ${"register_button"}  set variable    id:register-button
    click button  ${"register_button"}
    close browser

*** Keywords ***
