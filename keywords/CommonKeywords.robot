# Common file for สร้าง function ไว้ reuse ได้ทุก page

*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Wait until the element is ready to click
    [Arguments]     ${locator}
    Wait Until Keyword Succeeds     5x    2s   Click Element    ${locator}
Wait until the element is ready to input text
     [Arguments]    ${locator}    ${text}
    Wait Until Keyword Succeeds     5x    2s   Input Text    ${locator}    ${text}
Wait until the page is ready to verify text
     [Arguments]    ${expected_text}
    Wait Until Keyword Succeeds     5x    2s   Page Should Contain     ${expected_text}  
Wait until the element is ready to checkbox
    [Arguments]     ${locator}
    Wait Until Keyword Succeeds     5x    2s    Select Checkbox    ${locator}    