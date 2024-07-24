*** Settings ***
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/bookPage/bookPage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Test Setup          Open Flight Application
Test Teardown       Close Flight Application

*** Variables ***
${VALID_USERNAME}            support@ngendigital.com
${VALID_PASSWORD}            abc123


*** Test Cases ***
Book One Way With Valid Data
    Login With Valid Credential    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Click Book Menu On Login Screen
    Verify Book Screen Appears
    Click From City On Book Screen
    Click To City On Book Screen
    Click Class On Book Screen
    Click Start Date On Book Screen
    Click End Date On Book Screen
    Click Flight
    Click Book Flight
    Click Price Flight
    Click Confirm
    Verify Confirm Appears

Book Round Trip With Valid Data
    Login With Valid Credential    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Click Book Menu On Login Screen
    Verify Book Screen Appears
    Click Round Trip
    Click From City On Book Screen
    Click To City On Book Screen
    Click Class On Book Screen
    Click Start Date On Book Screen
    Click End Date On Book Screen
    Click Flight
    Click Book Flight
    Click Price Flight
    Click Confirm
    Verify Confirm Appears
    

    

