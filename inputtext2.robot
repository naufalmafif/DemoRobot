*** Settings ***
Library                 SeleniumLibrary
Test Setup              Open Browser            ${base_url}             ${browser_type}
Test Teardown           Close Browser

*** Variables ***
${base_url}             http://uitestingplayground.com/textinput
${browser_type}         Chrome

*** Test Cases ***
I am typing My Name in the field Google Page                 
    Maximize Browser Window
    Input Text                  //input[@class="form-control"]               contoh
    Sleep                       2s
    Click Element               //button[@class="btn btn-primary"]              
    Sleep                       5s
    Element Should Contain      //button[@class="btn btn-primary"]           contoh 123
