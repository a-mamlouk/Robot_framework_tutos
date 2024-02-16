*** Settings ***

*** Variables ***

*** Keywords ***
*** Test Cases ***
#Forloop
    #new syntax
#    FOR   ${i}    IN RANGE    0    4
#    LOG TO CONSOLE    ${i}
#    sleep    1
#    END

#ForLoop2
#    @{items}    create list    0    1    2   3
#    FOR   ${i}    IN    @{items}
#    LOG TO CONSOLE    ${i}
#    sleep    1
#    END

#ForLoop3
#    @{items}    create list     John    David   Smith   Scott
#    FOR    ${i}     IN  @{items}
#    LOG TO CONSOLE    ${i}
#    sleep    1
#    END

ForLoop4
    @{items}    create list     0   1   2   3
    FOR    ${i}     IN  @{items}
        LOG TO CONSOLE    ${i}
        sleep    1
        exit for loop if    ${i}==2
    END

