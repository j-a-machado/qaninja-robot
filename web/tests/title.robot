*** Settings ***
Library     SeleniumLibrary

***Variables***
${url}              https://training-wheels-protocol.herokuapp.com
${with_id}          id:thor
${with_css}         css:input[value='iron-man']
${with_xpath}       xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Should valid page title
    Open browser        ${url}                          firefox
    Title should be     Training Wheels Protocol
    Close browser

Check option with id
    Open browser                    ${url}                          firefox
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${with_id}
    Checkbox Should Be Selected     ${with_id}     
    Close browser

Check option with css
    Open browser                    ${url}                          firefox
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${with_css}
    Checkbox Should Be Selected     ${with_css}     
    Close browser

Check option with Xpath
    [tags]      checkbox
    Open browser                    ${url}                          firefox
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${with_xpath}
    Checkbox Should Be Selected     ${with_xpath}    
    Sleep                           5 
    Close browser