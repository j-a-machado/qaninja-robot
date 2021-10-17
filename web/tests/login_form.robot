***Settings***
Resource                            base.robot
Test Setup                          Open Session
Test Teardown                       Close Session

***Keywords***
Login With
    [Arguments]                     ${user}                                     ${pass}
    Input Text                      css:input[name=username]                    ${user}
    Input Text                      css:input[name=password]                    ${pass}
    Click Element                   class:btn-login

Warning Expected
    [Arguments]                     ${warning_expected}
    ${warning}=                     Get WebElement                              id:flash
    Should Contain                  ${warning.text}                             ${warning_expected}


***Test Cases***
Login Successfully
    Go To                           ${url}/login
    Login With                      stark                                       jarvis!
    Page Should Contain             Área Logada

Should Show A Warning For Invalid Password
    Go To                           ${url}/login
    Login With                      stark                                       stark
    Warning Expected                Senha é invalida!

Should Show A Warning For Invalid User 

    Go To                           ${url}/login
    Login With                      jarvis!                                     jarvis!
    Warning Expected                O usuário informado não está cadastrado!