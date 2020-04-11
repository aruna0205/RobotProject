*** Settings ***
Library  SeleniumLibrary  
Library  OperatingSystem  
Library   Collections      

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
${Browser}    Chrome
${dir}    C:\Users\aruna\eclipse-workspace\RobotProject_practice\data


*** Keywords ***
Start Browser
    Open Browser    ${URL}    ${Browser}

Enter Username Password
    [Arguments]    ${username}    ${password}
    Input Text    name=txtUsername    ${username}
    Input Password    name=txtPassword    ${password}
    
Compare two files
    [Arguments]    ${file1}    ${file2}
    ${file3}    Get File    ../RobotProject_practice/data/${file1} 
    ${file4}    Get File    ../RobotProject_practice/data/${file2}   
    Log    ${file3}
    Log    ${file4}
    Should Be Equal    ${file3}    ${file4}    
    
    