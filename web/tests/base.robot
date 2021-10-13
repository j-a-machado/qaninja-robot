*** Settings ***
Library     SeleniumLibrary

***Variables***
${url}              https://training-wheels-protocol.herokuapp.com

***Keywords***
Open Session
    Open browser        ${url}                          firefox

Close Session
    Sleep                       2
    Capture Page Screenshot
    Close browser
