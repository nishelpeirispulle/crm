*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CUSTOMERS_HEADER_LABELS} =        Our Happy Customers
${CUSTOMERS_ADD_CUSTOMER_LINK} =    id=new-customer
${CUSTOMERS_ADDED_SUCCESFULLY} =    Success! New customer added

*** Keywords ***
Verify Page Loaded
    wait until page contains        ${CUSTOMERS_HEADER_LABELS}

Click Add Customer Link
    click link                      ${CUSTOMERS_ADD_CUSTOMER_LINK}

Verify Customer Added Succesfully
    wait until page contains        ${CUSTOMERS_ADDED_SUCCESFULLY}
