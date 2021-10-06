***Settings***
Resource            base.robot
Test Setup          Open Session
Test Teardown       Close Session

***Variables***
${with_id}          id:thor
${with_css}         css:input[value='iron-man']
${with_xpath}       xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Should valid page title
    Title should be     Training Wheels Protocol
    
Check option with id
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${with_id}
    Checkbox Should Be Selected     ${with_id}     
    
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
    