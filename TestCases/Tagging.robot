*** Settings ***


*** Variables ***


*** Test Cases ***
TC1 User Registration Test
    [Tags]  sanity
    log to console  This is user reg test
    log to console  This user registration test is over

TC2 Login Test

    [Tags]  sanity
    log to console  This is login test
    log to console  This login test is over

TC3
    [Tags]  smoke
    log to console  This is test 3
    log to console  This test3  is  over

*** Keywords ***
