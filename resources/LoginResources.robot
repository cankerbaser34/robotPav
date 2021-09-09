*** Settings ***
Library  Selenium
*** Variables ***
${LOGIN_URL}    https://admin-demo.nopcommerce.com/
${BROWSER}      headlesschrome


*** Keywords ***
Open my Browser
    open browser    ${LOGIN_URL}    ${BROWSER}
    maximize browser window

Close browsers
    close all browsers



Open Login Page
    go to  ${LOGIN_URL}


Input username
    [Arguments]  ${username}
    input text  id:Email    ${username}
Input psw
    [Arguments]  ${password}

    input text   id:Password   ${password}

click login button
    click element   xpath://button[normalize-space()='Log in']

click logout

    click element   Logout

Error message should be visible
    page should contain     Login was unsuccessful

Dashbouard should be visible
    page should contain     Dashboard


