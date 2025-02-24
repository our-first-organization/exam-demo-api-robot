*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Test Plus Endpoint
    [Documentation]    Test the /plus endpoint with 5 and 6
    ${response}    GET    http://localhost:8081/plus/5/6
    Should Be Equal As Strings    ${response.status_code}    200
    Should Be Equal As Strings    ${response.text}    11
