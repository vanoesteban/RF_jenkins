*** Settings ***
Suite Setup
Suite Teardown
Documentation   Simple example using Selenium Library
Library     SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://www.facebook.com/
${User}         cat.ze@hotmail.com
${Password}     hadezko30


*** Test Cases ***
Open Website
    Load Page
    Login into Page     ${User}     ${Password}
    Submit Credentials
    [Teardown]  Close Browser

*** Keywords ***
Load Page
    Open Browser    ${LOGIN URL}    Firefox
    Maximize Browser Window

Login into Page
    [Arguments]     ${User}     ${Password}
    Input Text      email       ${User}
    Input Text      pass        ${Password}

Submit Credentials
    Click Element        loginbutton
    Title Should Be      Facebook