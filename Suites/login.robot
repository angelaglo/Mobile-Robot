*** Settings ***
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Test Setup          Open Flight Application
Test Teardown       Close Flight Application

*** Variables ***
${VALID_USERNAME}            support@ngendigital.com
${VALID_PASSWORD}            abc123
${INVALID_USERNAME}          angel@ngendigital.commmm
${INVALID_PASSWORD}           12345678


*** Test Cases ***
User Should Be Able To Login With Valid Credential
    Login With Valid Credential    ${VALID_USERNAME}    ${VALID_PASSWORD}



