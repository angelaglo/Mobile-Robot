*** Settings ***
Documentation        Search
Resource             ../base.robot
Resource             ../HomePage/homePage.robot
Variables            search-page-locators.yaml
Library    AppiumLibrary


*** Keywords ***
Invalid Search
    [Arguments]                          ${searchKey}
    Click Search In Button On Home Screen
    Wait Until Element Is Visible        locator=${text_input}
    Input Text                           locator=${text_input}         text=${searchKey}
    Wait Until Element Is Visible        locator=${search_text}
    Click Element                        locator=${search_text}
    Wait Until Page Contains Element     locator=${valid_flight_toast}

Valid Search
    [Arguments]                          ${searchKey}
    Click Element                        locator=${search_button}
    Wait Until Element Is Visible        locator=${text_input}
    Input Text                           locator=${text_input}         text=${searchKey}
    Wait Until Element Is Visible        locator=${search_text}
    Click Element                        locator=${search_text}
    Wait Until Element Is Visible        locator=${search_page}
    Element Should Contain Text          locator=${flight_number}      expected=DA 935


                                     
