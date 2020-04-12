*** Settings ***

Library    SeleniumLibrary

Suite Setup    Log    I am inside the test Suite SetUp     
Suite Teardown    Log    I am inside the test Suite Teardown
Test Setup    Log    I am inside the test case setup   
Test Teardown   Log    I am inside the test case teardown 

Default Tags    Sanity

*** Variables ***
${scalar_var1}    10
@{List_var}    20    30
&{dictionary_var}    name=aruna    role=tester
${search_test}    Robot framework Tutorial
${URL}            https://opensource-demo.orangehrmlive.com/
@{button_name}    txtUsername    txtPassword    Submit
&{Login_details}    userid=Admin    password=admin123    

*** Test Cases ***
MyFirstTestCase
    Log     This is the value of scalar variable
    ${use_value}=    Get Variable Value    ${scalar_var1}    
    Log    First element of list is @{List_var}[0]. The second element is @{List_var}[1]
    Log    Test is created by &{dictionary_var}[name] role &{dictionary_var}[role] 
    Log    This test is completed by %{username} on %{os}
    
MySecondTest
    Set Tags    SecondTest
    Remove Tags    SecondTest
    Log    I am inside second test
    
MyThirdTest
    [Tags]    tag1
    Log    I am inside my third test
    

MyTest
    [Tags]    tag1
    Log    I am inside my test  
    
Test1
    Log    Hi This is my test 1
    Log    Added a new line
        
# MySeleniumTest
    # Open Browser    https://github.com/robotframework/SeleniumLibrary/    Google Chrome
    # Close Browser
        
# #My Search Test case
# MyGoogleTest
    # Open Browser                 https://google.com    Chrome
    # Set Browser Implicit Wait    5
    # Input Text                   name=q                Automation step by step
    # Click Button                 name=btnK    
    # Sleep                        2   
    # Close Browser
    # Log                          Test Completed    
    
# #My search test case using variables
# MySearchTest
    # Open Browser                 https://google.com    Chrome
    # Set Browser Implicit Wait    5
    # Input Text                   name=q                ${search_test}
    # Click Button                 name=btnK    
    # Sleep                        2   
    # Close Browser
    # Log                          Test Completed


# LoginTestPractice
    # Open Browser                 ${URL}    Chrome
    # Set Browser Implicit Wait    5
    # Input Text                   name=@{button_name}[0]          &{Login_details}[userid]
    # Input Password               name=@{button_name}[1]          &{Login_details}[password]    
    # Click Button                 name=@{button_name}[2]    
    # Click Element                id=welcome
    # Click Element                link=Logout
    # Close Browser
    # Log                          Login Successful    


# TestUsingUSERKeyword    
    # Open Browser                 ${URL}    Chrome
    # Set Browser Implicit Wait    5
    # LoginKW  
    # Click Element                id=welcome
    # Click Element                link=Logout
    # Close Browser
    # Log                          Login Successful 

*** Keywords ***
LoginKW   
    Input Text                   name=@{button_name}[0]          &{Login_details}[userid]
    Input Password               name=@{button_name}[1]          &{Login_details}[password]    
    Click Button                 name=@{button_name}[2] 