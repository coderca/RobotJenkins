*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Observe user is able to test sanity flow
    [Tags]  sanity  regression
    Given User Launch browser for Indian store 
    # When User lands on homepage 
    Then User clicks on Searchbox and search for Mathematics book
    And User clicks on Search Icon

Observe User is able to test regression flow
    [Tags]  regression
    Given User Launch browser for Indian store
    # When User lands on homepage 
    # Then User clicks on Searchbox and search for Mathematics book
    # And User clicks on Search Icon

*** Keywords ***
User Launch browser for Indian store
    Open Browser  https://www.indiabookstore.net/  gc
    Maximize Browser Window

User clicks on Searchbox and Search for Mathematics book
    Input Text  id=searchBox  Mathematics

User clicks on search Icon
    Click Element  id=searchButtonInline

Observe sort by button is enabled
    Wait Until Page Contains Element  id=sortButton  timeout=40s
    Capture Page Screenshot  tc01.png