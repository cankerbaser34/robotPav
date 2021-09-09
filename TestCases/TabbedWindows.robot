*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
TabbedWindow

    Create Webdriver   Chrome    executable_path=drivers/chromedriver
    Go to       http://demo.automationtesting.in/Windows.html
    maximize browser window
    click element   xpath://*[@id="Tabbed"]/a/button
    sleep  3 seconds
    switch window   title:Frames & windows
    sleep  3 seconds
    close all browsers

*** Keywords ***
