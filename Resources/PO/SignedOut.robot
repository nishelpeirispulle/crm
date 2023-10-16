*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGNEDOUT_HEADER_LABEL} =         Signed Out

*** Keywords ***
Verify Page Loaded
    wait until page contains        ${SIGNEDOUT_HEADER_LABEL}


