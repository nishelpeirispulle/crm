*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Tests

    open browser                    about:blank      ${BROWSER}


End Web Tests
    close browser
