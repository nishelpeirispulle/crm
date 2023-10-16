*** Settings ***
Resource    ../Resources/PO/AddCustomer.robot
Resource    ../Resources/PO/Customers.robot
Resource    ../Resources/PO/Home.robot
Resource    ../Resources/PO/SignedIn.robot
Resource    ../Resources/PO/SignedOut.robot
Resource    ../Resources/PO/TopNav.robot


*** Variables ***


*** Keywords ***
Go To "Home" Page
    Home.Navigate To
    Home.Verify Page Loaded

Login with Valid Credentials
    [Arguments]    ${Email}     ${Password}
    TopNav.Click "Sign In" Link
    SignedIn.Verify Page Loaded
    SignedIn.Login With Valis Credentails   ${Email}     ${Password}
    Customers.Verify Page Loaded

Add New Customer
    Customers.Click Add Customer Link
    AddCustomer.Verify Page Loaded
    AddCustomer.Add New Customer
    Customers.Verify Customer Added Succesfully

Log Out
    TopNav.Click "Sign Out" Link
    SignedOut.Verify Page Loaded