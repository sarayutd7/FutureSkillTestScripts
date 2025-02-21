*** Settings ***
Library    SeleniumLibrary
Resource    ./CommonKeywords.robot    

*** Keywords ***
user register futuer skill page
    [Arguments]    ${email}    ${password}    ${firstname}    ${lastname}    ${phone}
    CommonKeywords.Wait until the element is ready to click    xpath=//button[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until the page is ready to verify text    เข้าสู่บัญชี Futureskill ของคุณ
    CommonKeywords.Wait until the element is ready to input text    css:input[name="email"]    ${email}
    CommonKeywords.Wait until the element is ready to input text    css:input[name="firstName"]    ${firstname}
    CommonKeywords.Wait until the element is ready to input text    css:input[name="lastName"]    ${lastname}
    CommonKeywords.Wait until the element is ready to input text    css:input[name="phoneNumber"]    ${phone}
    CommonKeywords.Wait until the element is ready to input text    css:input[name="newPassword"]    ${password}
    CommonKeywords.Wait until the element is ready to input text    css:input[name="confirmPassword"]    ${password}
    CommonKeywords.Wait until the element is ready to checkbox   css:input[name="consent"]
    CommonKeywords.Wait until the element is ready to click    xpath=//button[text()="สมัครสมาชิก"]
user validate otp password
    CommonKeywords.Wait until the page is ready to verify text    ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์ 