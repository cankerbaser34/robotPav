*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${url}  https://demo.nopcommerce.com/
${browser}  firefox

*** Test Cases ***
TestingInputBox
    Create Webdriver  Firefox  executable_path=/home/cihan/Desktop/driversforselenium/drivers/geckodriver
    Go To    ${url}
    maximize browser window
    title should be     nopCommerce demo store
    click link  xpath://a[normalize-space()='Log in']
    ${"email_txt"}  set variable    id:Email

    element should be visible    ${"email_txt"}
    element should be enabled   ${"email_txt"}
`
    input text  ${"email_txt"}  cankerbaser@yahoo.com
    sleep   5
    clear element text  ${"email_txt"}
    sleep   5
    close browser


*** Keywords ***
