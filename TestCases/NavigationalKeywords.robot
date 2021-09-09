*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
NavigationTest
    Create Webdriver      Chrome    executable_path=drivers/chromedriver
     Go to       https://www.youtube.com/
     maximize browser window

*** Variables ***

*** Keywords ***
