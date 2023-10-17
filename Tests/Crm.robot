*** Settings ***
Documentation       This is some basic infor about the whole suite
Library             SeleniumLibrary
Resource            ../Resources/Common.robot
Resource            ../Resources/CrmApp.robot

Test Setup          Begin Web Tests
Test Teardown       End Web Tests

# To run script
# robot -d results tests/crm.robot

*** Variables ***
${BROWSER} =            edge
${URL}=                 https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =  admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD} =  qwe

*** Test Cases ***
Home Page Should Load
    [Documentation]                         Test the Home Page
    [Tags]                                  1001   smoke   Home
    CrmApp.Go To "Home" Page


Login Should Succeed With Valid Credentials
    [Documentation]                         Test the login
    [Tags]                                  1002   smoke   Login
    CrmApp.Go To "Home" Page
    CrmApp.Login with Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}


Logout Should Succeed
    [Documentation]                         Test the log out
    [Tags]                                  1004   smoke   Log out
    CrmApp.Go To "Home" Page
    CrmApp.Login with Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Log Out


Should be able to add new customer
    [Documentation]                         Test adding a new customer
    [Tags]                                  1006   smoke   contacts
    CrmApp.Go To "Home" Page
    CrmApp.Login with Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Add New Customer
    CrmApp.Log Out


Feature 1 test
    log    Doing a new test
