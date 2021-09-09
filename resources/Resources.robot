*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      http://demo.guru99.com/test/newtours/
${url1}     https://www.countries-ofthe-world.com/flags-of-the-world.html
${url2}     https://www.countries-ofthe-world.com/flags-of-the-world.html
${url3}     http://testautomationpractice.blogspot.com/

${browser}      Chrome


*** Keywords ***
launchBrowser
    [Arguments]  ${appurl}      ${appbrowser}
    open browser   ${url}      ${browser}
    maximize browser window
    ${title}=   get title
    [Return]     ${title}

launchBrowser1
    [Arguments]  ${appurl1}      ${appbrowser}
    open browser   ${url1}      ${browser}
    maximize browser window
    ${title}=   get title
    [Return]     ${title}

launchBrowser2
    [Arguments]  ${appurl2}      ${appbrowser}
    open browser   ${url2}      ${browser}
    maximize browser window
    ${title}=   get title
    [Return]     ${title}

launchBrowser3
    [Arguments]  ${appurl3}      ${appbrowser}
    open browser   ${url3}      ${browser}
    maximize browser window
