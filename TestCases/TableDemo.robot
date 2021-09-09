*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/Resources.robot

*** Test Cases ***

TableValidation

    launchBrowser3   ${url3}    ${browser}
     sleep   2 seconds
    #scroll element into view   xpath://tbody//tr//img[2]
    execute javascript      window.scrollTo(0,1700)
    sleep   2 seconds
    ${number0frows}=    get element count   xpath://table[@name='BookTable']/tbody/tr
    ${number0fcolumns}=    get element count   xpath://table[@name='BookTable']/tbody/tr[1]/th
    ${data}=    get text   xpath://table[@name='BookTable']/tbody/tr[5]/td[1]

    table column should contain     //table[@name='BookTable']  2   Author
    table row should contain        //table[@name='BookTable']   4     Learn JS
    table cell should contain       //table[@name='BookTable']  7   1   Master In JS
    table header should contain      //table[@name='BookTable']     BookName

    log to console   ${data}
    log to console   ${number0frows}
    log to console   ${number0fcolumns}


    sleep   2 seconds
    close all browsers

    #execute javascript      window.scrollTo(0,document.body.scrollHeight)
