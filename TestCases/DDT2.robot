*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/LoginResources.robot
Library    DataDriver  ../TestData/LoginData.xlsx

Suite Setup  Open my Browser
Suite Teardown  Close browsers
Test Template  InvalidLogin



*** Test Cases ***
LoginTestwithExcel using ${username} and ${password}

*** Keywords ***
InvalidLogin
    [Arguments]  ${username}    ${password}
    Input username  ${username}
    Input psw       ${password}
    click login button
    sleep   3 seconds
    Error message should be visible