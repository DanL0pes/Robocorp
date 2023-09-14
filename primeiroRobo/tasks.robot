*** Settings ***
Documentation       Template robot main suite.
Library    RPA.Browser.Selenium    auto_close=${FALSE}


*** Tasks ***
Abrir website do CRM application
    Open website

Add um customer no CRM System
    Add custumer to CRM system
*** Keywords***

Open website
    Open Available Browser    https://www.rpa-unlimited.com/youtube/robocorp-tutorial/

Add custumer to CRM system
    Input Text    company-name    Dan Tech Academy
    Input Text    company-contact    Daniel Lopes
    Input Text    address    Rua guaianazes 242
    Input Text    zipcode    1234AB
    Input Text    city    São Paulo
    Input Text    country    Brazil
    Input Text    telephone    1234567
    Input Text    email    daniel@exemplo.com
    Submit Form