*** Settings ***
Library  SeleniumLibrary
Resource    ../resources/LoginResources.robot
Suite Setup  Open my Browser
Suite Teardown  Close browsers
Test Template  InvalidLogin
*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/LoginResources.robot
Library    DataDriver  ../TestData/LoginData.xlsx

Suite Setup  Open my Browser
Suite Teardown  Close browsers
Test Template  InvalidLogin
*** Test Cases ***
Right user empty pass       admin@yourstore.com     ${EMPTY}
Right user wrong pass       admin@yourstore.com     xty
Wrong user right pass       am@yorstore.com         admin
Wrong user empty pass       amr@yourstore.com       ${EMPTY}
Wrong user wrong pass       the@yahoo.com           535y



*** Keywords ***
InvalidLogin
    [Arguments]  ${username}    ${password}
    Input username  ${username}
    Input psw       ${password}
    click login button
    sleep   3 seconds
    Error message should be visible