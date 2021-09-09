*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/Resources.robot

*** Test Cases ***
Scrolling Test
    ${PageTitle}=       launchBrowser1   ${url1}    ${browser}
    sleep   2 seconds
    # execute javascript      window.scrollTo(0,1800)
     execute javascript      window.scrollTo(0,document.body.scrollHeight)
     sleep  3 seconds
     execute javascript      window.scrollTo(0,-document.body.scrollHeight)
   # scroll element into view    xpath://img[@alt='Flag of Turkey']
    sleep   2 seconds
    close all browsers