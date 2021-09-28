*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Should valid page title
    Open browser        https://training-wheels-protocol.herokuapp.com      firefox
    Title should be     Training Wheels Protocol
    Close browser