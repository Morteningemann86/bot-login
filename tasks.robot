*** Settings ***
Documentation       Correctly fill in the username, password, and click submit for the scoring modal to appear.

Library    RPA.Browser.Selenium

*** Variables ***

${URL}    https://developer.automationanywhere.com/challenges/AutomationAnywhereLabs-Login.html?_gl=1*1h9x680*_ga*NzIwODQxMjM4LjE2ODU4MTUzNDc.*_ga_DG1BTLENXK*MTY5OTM4MjUzNi4yLjAuMTY5OTM4MjUzOS41Ny4wLjA.&_ga=2.72094163.1979049939.1699382537-720841238.1685815347&_fsi=oEULoW5l

${USERNAME}    user@automationanywhere.com
${PASSWORD}    Automation123

 

*** Tasks ***
Login and click submit
    Open Available Browser    ${URL}    maximized=True
    Input Text When Element Is Visible    xpath://*[@id="inputEmail"]    ${USERNAME}
    Input Password    xpath://*[@id="inputPassword"]    ${PASSWORD}
    Click Element When Clickable    xpath://button[text()='Sign in']
