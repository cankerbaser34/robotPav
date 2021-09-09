*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/Resources.robot

*** Test Cases ***
GetAllLinks Test
    ${PageTitle}=       launchBrowser   ${url1}    ${browser}
    ${Links_number}=    get element count   xpath://a
    log to console  ${Links_number}

        FOR     ${i}    IN RANGE  1    ${Links_number}
        ${linkText}=    get text    xpath:(//a)[${i}]
        log to console  ${linkText}
        END
    sleep   2 seconds
      close all browsers