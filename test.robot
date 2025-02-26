*** Settings ***
Library    RequestsLibrary
Library    String

*** Test Cases ***
Test x_is_1 Endpoint
    [Documentation]
    ${response}    GET    http://localhost:8081/cir_sur/1
    Should Be Equal As Strings    ${response.status_code}    200
    Should Be Equal As Strings    ${response.text}    12.56

Test x_is_neg10 Endpoint
    ${response}    GET    http://localhost:8081/cir_sur/-10
    Should Be Equal As Strings    ${response.status_code}    200
    Should Be Equal As Strings    ${response.text}    0.00

Test x_is_1dot5 Endpoint
    ${response}    GET    http://localhost:8081/cir_sur/1.5
    Should Be Equal As Strings    ${response.status_code}    200
    Should Be Equal As Strings    ${response.text}    28.26