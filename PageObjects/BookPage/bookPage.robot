*** Settings ***
Documentation        Booking Flight
Resource             ../base.robot
Resource             ../HomePage/homePage.robot
Variables            book-page-locators.yaml
Library    AppiumLibrary

*** Keywords ***
Click Book Menu On Login Screen
    Click Element                        locator=${book_menu}

Verify Book Screen Appears
    Wait Until Element Is Visible        locator=${button_one_way}

Click Round Trip
    Wait Until Element Is Visible        locator=${button_round_trip}
    Click Element                        locator=${button_round_trip}

Click From City On Book Screen
    Wait Until Element Is Visible        locator=${button_spinner_from}
    Click Element                        locator=${button_spinner_from}
    Wait Until Element Is Visible        locator=${city_from}
    Click Element                        locator=${city_from}

Click To City On Book Screen
    Wait Until Element Is Visible        locator=${button_spinner_to}
    Click Element                        locator=${button_spinner_to}
    Wait Until Element Is Visible        locator=${city_to}
    Click Element                        locator=${city_to}

Click Class On Book Screen
    Wait Until Element Is Visible        locator=${button_spinner_class}
    Click Element                        locator=${button_spinner_class}
    Wait Until Element Is Visible        locator=${class}
    Click Element                        locator=${class}

Click Start Date On Book Screen
    Wait Until Element Is Visible        locator=${start_date}
    Click Element                        locator=${start_date}
    Wait Until Element Is Visible        locator=${date_dialog}
    Click Element                        locator=${date_selected}
    Click Element                        locator=${button_date}

Click End Date On Book Screen
    Wait Until Element Is Visible        locator=${end_date}
    Click Element                        locator=${end_date}
    Wait Until Element Is Visible        locator=${date_dialog}
    Click Element                        locator=${date_selected}
    Click Element                        locator=${button_date}

Click Flight
    Wait Until Element Is Visible        locator=${radio_flight}
    Click Element                        locator=${radio_flight}

Click Book Flight
    Click Element                        locator=${book_flight}

Click Price Flight
    Wait Until Element Is Visible        locator=${price_flight}
    Click Element                        locator=${price_flight}

Click Confirm
    Click Element                        locator=${confirm}

Verify Confirm Appears
    Wait Until Element Is Visible        locator=${confirm_text}



