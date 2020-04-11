*** Settings ***
Library    SeleniumLibrary    
Resource    ../RobotProject_practice/Resources/Resources1.robot
Library    OperatingSystem    

*** Variables ***
${data}    dic_file_1.txt
${data1}   dic_file_2.txt

*** Test Cases ***
User defined keyword usage test case
    Start Browser
    Enter Username Password    Admin    admin123
    

Using Builtin keywords
    Compare two files     ${data}    ${data1}