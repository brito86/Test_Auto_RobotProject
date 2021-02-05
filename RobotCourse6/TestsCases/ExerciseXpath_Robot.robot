***Settings***
Library    SeleniumLibrary 
Documentation    La suit est pour expliquer la synchronization  

*** Test Cases ***
Login Test
    Open Browser    https://opensource-demo.orangehrmlive.com/index.php/auth/login    gc
    Maximize Browser Window         
    Set Selenium Speed    1s
    Input Text    xpath=//input[@id='txtUsername']    Admin
    Input Password    xpath=//input[@id='txtPassword']    admin123   
    Click Button    xpath=//input[@id='btnLogin']     
    
LogoutTest
    
    Click Link    xpath=//a[@id='welcome']
    Click Link    link=Logout 
    
TestWait
    Open Browser    https://opensource-demo.orangehrmlive.com/index.php/auth/login    gc
    Maximize Browser Window   
    ${timeout} =    Get Selenium Timeout
    Log To Console    ${timeout}          
    Set Selenium Speed    1s
    ${timeout} =    Get Selenium Timeout
    Log To Console    ${timeout} 
    Input Text    xpath=//input[@id='txtUsername']    Admin
    Input Password    xpath=//input[@id='txtPassword']    admin123   
    Click Button    xpath=//input[@id='btnLogin']  
    Wait Until Page Contains    Dashboard   
    
TestWaitagain
    Open Browser    https://opensource-demo.orangehrmlive.com/index.php/auth/login    gc
    Maximize Browser Window         
    #Set Selenium Speed    1s
    Input Text    xpath=//input[@id='txtUsername']    Admin
    Input Password    xpath=//input[@id='txtPassword']    admin123 
    Set Selenium Implicit Wait    20s  
    Click Button    xpath=//input[@id='btnLogin']   
           
TestLoginGit
    Log To Console    Hello
    [Documentation]    Ceci est un test    