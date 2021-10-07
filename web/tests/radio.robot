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
    Radio Button Should Be Set To    movies              cap
    Sleep                           5 
    
Check option with css
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${with_css}
    Checkbox Should Be Selected     ${with_css}     
    
Check option with Xpath
    [tags]      checkbox
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${with_xpath}
    Checkbox Should Be Selected     ${with_xpath}    
    Sleep                           5 
    