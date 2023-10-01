*** Settings ***
Documentation       Template robot main suite.
Library    RPA.Windows

*** Tasks ***
Add user to CRM system
    Windows Run    MyCRM.exe
    Control Window    My CRM (Sample App)
    Send Keys    id:textBoxPeopleFirstName    Mabel
    Click    id:radioButtonFemale
    Select    id:comboBoxPeopleAddressState    WA
    Click    id:checkBox1

Saving other tab
    Click    name:Other
    Click    id:button1
    Click    id:2