*** Settings ***
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/bookPage/bookPage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Resource            ../PageObjects/Search/searchPage.robot
Test Setup          Open Flight Application
Test Teardown       Close Flight Application

*** Variables ***
${VALID_USERNAME}            support@ngendigital.com
${VALID_PASSWORD}            abc123
${INVALID_SEARCHKEY}         12345
${VALID_SEARCHKEY}           DA935


*** Test Cases ***
Search With Invalid Data
    Login With Valid Credential    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Invalid Search                 ${INVALID_SEARCHKEY} 

Search With Valid Data
    Login With Valid Credential    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Valid Search                   ${VALID_SEARCHKEY}   
    
    

    

