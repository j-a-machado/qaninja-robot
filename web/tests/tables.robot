***Settings***
Resource                            base.robot
Test Setup                          Open Session
Test Teardown                       Close Session

***Test Cases***
Check value with the line number
    Go To                           ${url}/tables
    Table Row Should Contain        id:actors           2       @vindiesel

Check value discovering the line number
    Go To                           ${url}/tables
    ${target}                       Get WebElement      xpath:.//tr[contains(., '@chadwickboseman')]
    Log                             ${target.text}
    Log To Console                  ${target.text}
    Should Contain                  ${target.text}      $ 700.000
    Should Contain                  ${target.text}      Pantera Negra