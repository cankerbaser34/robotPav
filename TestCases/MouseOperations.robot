*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
MouseActions
    open browser   https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome

    maximize browser window

    open context menu   xpath://span[contains(text(),'right click me')]
    sleep   3 seconds


    # Double click action
    Go To  http://testautomationpractice.blogspot.com/
    maximize browser window
    sleep   2 seconds
    double click element    xpath://button[contains(text(),'Copy Text')]


    # drag and drop action

    Go to       http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize browser window

    drag and drop   id:box6     box106
    sleep   2 seconds
    close all browsers
*** Variables ***

*** Keywords ***
