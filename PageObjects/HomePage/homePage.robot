*** Settings ***
Documentation        Segala hal yg berkaitan dengan homepage
Resource             ../base.robot
Variables            home-page-locators.yaml
Library    AppiumLibrary


*** Keywords ***
Verify Home Screen Appears
    Element Should Be Visible        locator=${home_screen}

Click Sign In Button On Home Screen
    Click Element                    locator=${signin_button}

Verify Success Login
    Wait Until Element Is Visible    locator=${success_text}

Verify Failed Login
    Wait Until Element Is Visible    locator=${failed_text}

                                     
