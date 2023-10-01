*** Settings ***
Documentation       Template robot main suite.
Library    RPA.Browser.Selenium    auto_close=${FALSE}
Library    RPA.Excel.Files


*** Tasks ***
Open the website
    Open website

Ler as companies do Excel e add para o website
    Preencher o form usando a data do Excel file

*** Keywords ***
Open website
    Open Available Browser    https://www.rpa-unlimited.com/youtube/robocorp-tutorial/

Preencher e mandar form para todas company
    [Arguments]    ${company}
    Input Text    company-name    ${company}[Company Name]
    Input Text    company-contact    ${company}[Contact Person]
    Input Text    address    ${company}[Address]
    Input Text    zipcode    ${company}[Zipcode]
    Input Text    city    ${company}[City]
    Input Text    country    ${company}[Country]
    Input Text    telephone    ${company}[Telephone]
    Input Text    email    ${company}[Email]
    Submit Form
    
Preencher o form usando a data do Excel file
    Open Workbook    exelCadrastroRobot/input.xlsx
    ${companies}    Read Worksheet As Table    header=True
    Close Workbook

    FOR    ${company}    IN    @{companies}
        Preencher e mandar form para todas company    ${company}
        
    END