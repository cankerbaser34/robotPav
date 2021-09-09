*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html


*** Test Cases ***
Handling Dropdown and Lists

    Create Webdriver  Firefox  executable_path=/home/cihan/Desktop/driversforselenium/drivers/geckodriver
    Go To    ${url}
    maximize browser window

    input text      firstname   Cihan
    input text      lastname    Baser

    select radio button     sex     Female
    select radio button     exp     4

    select checkbox     RedTea
    select checkbox      Break


    select from list by label   continents      Asia
    sleep   2
    select from list by index   continents      6
    sleep   2


    # List box
    select from list by label   selenium_commands   Switch Commands

    select from list by label   selenium_commands   Wait Commands
    unselect from list by label   selenium_commands   Switch Commands

    close browser

*** Keywords ***
