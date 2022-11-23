*** Settings ***
Suite Setup     log to console  OpeningBrowser
Suite Teardown  log to console    ClosingBrower
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/   chrome

*** Test Cases ***
RegisterTest
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Click Link    //a[@class='ico-register']
    Select Radio Button    Gender    F
    Sleep    1
    Input Text    //input[@id='FirstName']    likitha
    Input Text    //input[@id='LastName']    Munjampally
    Sleep    1
    Select From List By Label    DateOfBirthDay     28
    Select From List By Label    DateOfBirthMonth   June
    Select From List By Label    DateOfBirthYear    2000
    Sleep    1
    Input Text    //input[@id='Email']    likkiaayyasagalak@gmail.com
    Input Text    //input[@id='Company']    HashedIn by Deloitte
    Sleep    1
    Input Text    //input[@id='Password']    Likki28
    Input Text    //input[@id='ConfirmPassword']    Likki28
    Click Element    //button[@id='register-button']
    Page Should Contain Element    xpath=/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]
    Sleep    3

SortingByPrice
    Click Element    //a[@href='/computers']
    Click Element    //h2/a[@title='Show products in category Desktops']
    Sleep    3
    Select From List By Index    products-orderby   3
    Sleep    3
    Click Element    //a[@class='ico-logout']
    Sleep    3







