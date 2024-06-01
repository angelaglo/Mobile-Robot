*** Settings ***
Documentation        Segala hal yg berkaitan dengan login
Resource             ../base.robot
Resource             ../HomePage/homePage.robot
Library    AppiumLibrary

*** Keywords ***
Click Book Menu On Login Screen
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]

Verify Book Screen Appears
    Wait Until Element Is Visible        locator=//android.widget.TextView[@text="ONE WAY"]

Click From City On Book Screen
    Wait Until Element Is Visible        locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerFrom"]
    Click Element                    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerFrom"]
    Wait Until Element Is Visible        locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Chicago"]
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Chicago"]

Click To City On Book Screen
    Wait Until Element Is Visible        locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerTo"]
    Click Element                    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerTo"]
    Wait Until Element Is Visible        locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Ottawa"]
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Ottawa"]

Click Class On Book Screen
    Wait Until Element Is Visible        locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerClass"]
    Click Element                    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerClass"]
    Wait Until Element Is Visible        locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="First"]
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="First"]

Click Start Date On Book Screen
    Wait Until Element Is Visible        locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]
    Click Element                    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]
    Wait Until Element Is Visible        locator=//android.widget.LinearLayout[@resource-id="android:id/parentPanel"]
    Click Element                    locator=//android.view.View[@content-desc="15 August 2019"]
    Click Element                    locator=//android.widget.Button[@resource-id="android:id/button1"]

Click End Date On Book Screen
    Wait Until Element Is Visible        locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]
    Click Element                    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]
    Wait Until Element Is Visible        locator=//android.widget.LinearLayout[@resource-id="android:id/parentPanel"]
    Click Element                    locator=//android.view.View[@content-desc="15 August 2019"]
    Click Element                    locator=//android.widget.Button[@resource-id="android:id/button1"]

Click Flight
    Wait Until Element Is Visible    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]
    Click Element    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]

Click Book Flight
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

Click Price Flight
    Wait Until Element Is Visible    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price9"]
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price9"]

Click Confirm
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]

Verify Confirm Appears
    Wait Until Element Is Visible        locator=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]



