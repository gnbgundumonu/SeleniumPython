*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.facebook.com

*** Test Cases ***
LoginTestCase
    #open browser  {url}  {browser}
    ${spead}=    get selenium speed
    log to console  ${spead}
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  2 seconds
    input text  name:firstname  Nagababu
    input text  name:lastname  Gundumonu
    input text  name:reg_email__  abc@gmail.com
    input text  name:reg_email_confirmation__  abc@gmail.com
    input text  name:reg_passwd__  1234567
    select radio button  sex  2
    select from list by label  birthday_day  7
    select from list by index  birthday_month  1
    select from list by value  birthday_year  1978
    click element  xpath://button[@name='websubmit']
    ${spead}=    get selenium speed
    log to console  ${spead}
*** Keywords ***