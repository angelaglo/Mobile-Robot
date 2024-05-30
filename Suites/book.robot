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
Book With Valid Data
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username    username=${VALID_USERNAME}
    Input User Password    password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Success Login
    Click Book Menu On Login Screen
    Verify Book Screen Appears
    Click From City On Book Screen
    Click To City On Book Screen
    Click Class On Book Screen
    Click Start Date On Book Screen
    Click End Date On Book Screen
    Click Flight
    Click Book Flight

    

