***Settings***
Resource                base.robot

***Test Cases***
Abrir o perfil da Jocelia no Facebook
    Open browser            https://www.facebook.com.br/        firefox
    Input Text              css:input[name=email]               ${user}
    Input Text              css:input[name=pass]                ${pass}
    Click Element           css:button[name=login]
    Page Should Contain     No que você está pensando, Jocelia?
