***Settings***
Resource            base.robot
Test Setup          Open Session
Test Teardown       Close Session

***Test Cases***
Select option by text and validate by value
    Go To                               ${url}/dropdown
    Select From List By Label           class:avenger-list              Scott Lang
    ${option-selected}=                 Get Selected List Value         class:avenger-list
    Should Be Equal                     ${option-selected}              7   

Select option by value and validate by text
    Go To                               ${url}/dropdown
    Select From List By Value           id:dropdown                     6
    ${option-selected}=                 Get Selected List Label         id:dropdown
    Should Be Equal                     ${option-selected}              Loki