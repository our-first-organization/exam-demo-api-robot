*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Test prime_true Endpoint
    [Documentation]    Test the /is_prime
    ${response}    GET    http://localhost:8081/is_prime/11
    Should Be Equal As Strings    ${response.status_code}    200
    Should Be Equal As Strings    ${response.text}    true

Test prime_false Endpoint
    ${response}    GET    http://localhost:8081/is_prime/12
    Should Be Equal As Strings    ${response.status_code}    200
    Should Be Equal As Strings    ${response.text}    false
