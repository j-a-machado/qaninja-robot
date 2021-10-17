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

Should Show A Warning For Invalid Password
    Go To                           ${url}/login
    Input Text                      css:input[name=username]                stark
    Input Text                      css:input[name=password]                stark
    Click Element                   class:btn-login
    ${warning}=                     Get WebElement                          id:flash
    Should Contain                  ${warning.text}                         Senha é invalida!

Should Show A Warning For Invalid User 

    Go To                           ${url}/login
    Input Text                      css:input[name=username]                jarvis!
    Input Text                      css:input[name=password]                jarvis!
    Click Element                   class:btn-login
    ${warning}=                     Get WebElement                          id:flash
    Should Contain                  ${warning.text}                         O usuário informado não está cadastrado!