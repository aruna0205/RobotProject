*** Settings ***
Library    Reserved    


*** Keywords ***

Division Operation
    [Arguments]    ${number1}    ${number2}
    ${result}=    Evaluate    ${number1}/${number2} 
    [Return]    ${result}
    
Average Operation
    [Arguments]    @{argument_list}
    ${number_of_arguments}=    Get Length    ${argument_list}
    ${sum}=    Set Variable    0
    :FOR    ${argument}    IN    @{argument_list}
    \    ${sum}=    Evaluate    ${sum} + ${argument}
    ${average_result}=     Evaluate    ${sum}/${number_of_arguments}    
    [Return]    ${average_result}
    
Maximum Number Operation
   [Arguments]    @{argument_list}
   ${number_of_arguments}=    Get Length    ${argument_list}
   ${max}=    Set Variable   @{argument_list}[0]
    :FOR    ${argument}    IN    @{argument_list}
    \    ${max}=    Run Keyword If    ${max}>${argument}    Set Variable  ${max}  ELSE    Set Variable    ${argument}      
    [Return]    ${max}    
       
Minimum Number Operation
   [Arguments]    @{argument_list}
   ${number_of_arguments}=    Get Length    ${argument_list}
   ${min}=    Set Variable   @{argument_list}[0]
    :FOR    ${argument}    IN    @{argument_list}
    \    ${min}=    Run Keyword If    ${min}<${argument}    Set Variable  ${min}  ELSE    Set Variable    ${argument}      
    [Return]    ${min}    

Modular Operation
    [Arguments]    ${number1}    ${number2}
    ${result}=    Evaluate    ${number1}%${number2} 
    [Return]    ${result}