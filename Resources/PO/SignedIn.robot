*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGNEDIN_HEADER_LABEL} =      Login
${SIGNEDIN_EMAIL_TEXTBOX} =     id=email-id
${SIGNEDIN_PASSWORD_TEXTBOX} =  id=password
${SIGNEDIN_SUBMIT_BUTTON} =     id=submit-id


*** Keywords ***
Verify Page Loaded
    wait until page contains     ${SIGNEDIN_HEADER_LABEL}

Login With Valis Credentails
    [Arguments]    ${Email}     ${Password}
    Fill "Email" Field           ${Email}
    Fill "Password" Field        ${Password}
    Click "Submit" Buttom

Fill "Email" Field
    [Arguments]    ${Email}
    input text                    ${SIGNEDIN_EMAIL_TEXTBOX}     ${Email}

Fill "Password" Field
    [Arguments]    ${Password}
    input text                    ${SIGNEDIN_PASSWORD_TEXTBOX}     ${Password}


Click "Submit" Buttom
    click button                  ${SIGNEDIN_SUBMIT_BUTTON}
