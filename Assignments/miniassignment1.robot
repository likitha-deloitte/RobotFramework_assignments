*** Settings ***
Library     SeleniumLibrary

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
    Input Text    //input[@id='Email']    likki@gmail.com
    Input Text    //input[@id='Company']    HashedIn by Deloitte
    Sleep    1
    Input Text    //input[@id='Password']    Likki28
    Input Text    //input[@id='ConfirmPassword']    Likki28
    Click Element    //button[@id='register-button']
    Page Should Contain Element    xpath=/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]
    Sleep    3
    Click Element    //a[@class='ico-logout']
    Sleep    3



