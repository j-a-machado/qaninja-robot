***Settings***
Resource                            base.robot
Test Setup                          Open Session
Test Teardown                       Close Session

***Test Cases***
Login Successfully
    Go To                           ${url}/login
    Input Text                      css:input[name=username]                stark
    Input Text                      css:input[name=password]                jarvis!
    Click Element                   class:btn-login
    Page Should Contain             Área Logada