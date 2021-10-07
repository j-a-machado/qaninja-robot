*** Settings ***
Library     SeleniumLibrary

***Variables***
${url}              https://training-wheels-protocol.herokuapp.com

***Keywords***
Open Session
    Open browser        ${url}                          firefox

Close Session
    Capture Page Screenshot
    Close browser
