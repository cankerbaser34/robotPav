
*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${url}  https://www.fashionette.co.uk/
${browser}  firefox

*** Test Cases ***


LoginTest


    Create Webdriver     Firefox    executable_path=/home/cihan/Desktop/driversforselenium/drivers/geckodriver
    Go To    ${url}
    click link  xpath://a[@title='Login']
    close browser


*** Keywords ***





