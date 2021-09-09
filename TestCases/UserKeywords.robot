*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/Resources.robot
*** Test Cases ***

TC1

    ${PageTitle}=   launchBrowser   ${url}    ${browser}
    log to console  ${PageTitle}
    log     ${PageTitle}
    input text  userName    mercury
    input text  password    mercury
    click button    submit
    sleep   2 seconds
    close all browsers

