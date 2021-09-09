*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
MultipleBrowserTest

    Create Webdriver   Chrome    executable_path=drivers/chromedriver
    Go to  https://www.amazon.es/

    sleep   2 seconds
    Create Webdriver   Chrome    executable_path=drivers/chromedriver
    Go to  https://www.google.com/

    switch browser  1
    ${"title"}=  get title

    log to console  ${"title"}

    switch browser  2

        ${"title2"}=  get title
        log to console  ${"title2"}

     Close all browsers

*** Keywords ***
