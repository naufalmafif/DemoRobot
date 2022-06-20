*** Settings ***
Library                 SeleniumLibrary
Test Setup              Open Browser            ${base_url}             ${browser_type}
Test Teardown           Close Browser

*** Variables ***
${base_url}             https://demoqa.com/checkbox
${browser_type}         Chrome

*** Test Cases ***
I Click checkbox Notes Data

    Maximize Browser Window
    Click Element               (//button[@aria-label="Toggle"])[1]
    Click Element               (//button[@aria-label="Toggle"])[2]
    Click Element               //label[@for="tree-node-notes"]
    Element Should Be Visible   //div[@id="result"]
    Element Should Contain      //span[@class="text-success"]       notes