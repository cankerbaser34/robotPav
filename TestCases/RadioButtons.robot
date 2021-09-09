*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${url}  http://www.practiceselenium.com/practice-form.html
*** Test Cases ***

Testing Radio Buttons and Check Boxes
    Create Webdriver  Firefox  executable_path=/home/cihan/Desktop/driversforselenium/drivers/geckodriver
    Go To    ${url}
    maximize browser window

#    set selenium speed      2seconds

    ${"name_txt"}  set variable    name:firstname
    ${"last_name_txt"}  set variable    name:lastname

    element should be visible     ${"name_txt"}
    input text     ${"name_txt"}    Cihan

    element should be visible   ${"last_name_txt"}
    input text      ${"last_name_txt"}  Baser

    # Selecting Radio Butons
    select radio button     sex     Male
    select radio button     exp     7

    # Selecting checkboxes

    select checkbox     BlackTea
    select checkbox     RedTea
    unselect checkbox  BlackTea
    select checkbox      Harmless Addiction
    close browser




*** Keywords ***
