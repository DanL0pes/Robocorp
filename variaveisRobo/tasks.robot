*** Settings ***
Documentation       Template robot main suite.


*** Variables ***
${name}    Daniel
${ano}    ${2023}
${anoNasc}    ${2006}
@{jogoFavorito}    Minecraft    Sea Of Thieves    Gris
&{nota}    portugues=b    matematica=mb    historia=mb

*** Tasks ***
Log Variables
    Log    ${name}
    ${idade}    Evaluate    ${ano}-${anoNasc}
    Log    ${idade}
    Log    ${jogoFavorito}[0]
    Log    ${nota}[matematica]