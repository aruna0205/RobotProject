*** Settings ***
Resource    Resources/maths_op_resource.robot
Library    Collections    
Library    Reserved    


*** Variables ***
${number1}    10
${number2}    0
${number3}    2
${no_1}    1
${no_2}    2
${no_3}    3
${no_4}    4
@{list}    1    9    1    -1    5    8

*** Test Cases ***
Test div operation
    [Documentation]    This test will test divison operation
    Pass Execution If    ${number2}==0    Encountered Division by zero    
    ${result}=     Division Operation    ${number1}    ${number2}    
    Log    The result of ${number1} divided by ${number2} is ${result}


Test division operation
    ${result}=    Run Keyword If    ${number3}==0    Fail    Encountered Division by Zero    ELSE    Division Operation    ${number1}    ${number3}    
    Log    The result of ${number1} divided by ${number3} is ${result}
    
Test average operation
    ${result_avg}    Average Operation    ${no_1}    ${no_2}    ${no_3}    ${no_4}
    Log    Average of ${no_1}, ${no_2}, ${no_3}, ${no_4} is ${result_avg}
    
Test avg operation
    ${result_average}    Average Operation    @{list}
    Log    Average is ${result_average}
    
Test max number
    ${result_max}    Maximum Number Operation    @{list}
    Log    Maximum number is ${result_max}
    
Test min number
    ${result_min}    Minimum Number Operation    @{list}
    Log    Minimum number is ${result_min}
    
Test Avg, Min and Max
    ${result_average}    Average Operation    @{list}
    ${result_max}    Maximum Number Operation    @{list}
    ${result_min}    Minimum Number Operation    @{list}
    Log     Data is @{list}    
    Log    Average is ${result_average}
    Log    Maximum number is ${result_max}
    Log    Minimum number is ${result_min}
    
Test mod operation
    ${result_mod}    Modular Operation    ${number1}    ${number3}     
    Log    The reminder of ${number1} divided by ${number3} is ${result_mod}