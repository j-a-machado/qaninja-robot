***Settings***
Resource            base.robot
Test Setup          Open Session
Test Teardown       Close Session

***Variables***
${with_id}          id:thor
${with_css}         css:input[value='iron-man']
${with_xpath}       xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Radio button with id
    [tags]      radio
    Go To                           ${url}/radios
    Select Radio button             movies              cap 
    Radio Button Should Be Set To   movies              cap
    Sleep                           5 

Radio button with value
    [tags]      radio
    Go To                           ${url}/radios
    Select Radio button             movies              guardians 
    Radio Button Should Be Set To   movies              guardians
    Sleep                           5 
    