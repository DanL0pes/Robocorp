*** Settings ***
Documentation       Template robot main suite.
Library    RPA.Browser.Selenium    auto_close=${FALSE}

*** Tasks ***
Abrir Browser
    Open Available Browser    https://www.rpa-unlimited.com/youtube/RPA-practice-forms/

Digitando Texto
    Input Text    textform    Oi Povo

Selecione o radiobutton
    Select Radio Button    radiobutton    option1

Selecione a checkbox
    Select Checkbox    spaceprogram

Selecione o dropbox
    Sleep    2
    Select From List By Label    company    Royal Dutch Oyster
    Sleep    2
    Select From List By Value    company    Royal Dutch Bank
    Sleep    2
    Select From List By Index    company    0

Enviar forms
    Submit Form