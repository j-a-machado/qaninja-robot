***Settings***
Library     app.py

***Test Cases***
Show welcome message
    ${result}=          welcome     Juliana
    Log to Console      ${result}
    Should be equal     ${result}   Olá Juliana, bem vindo ao curso básico de Robot Framework!