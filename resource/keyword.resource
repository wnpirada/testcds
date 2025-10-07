*** Settings ***
Library    Browser
Resource   /khwannaphon/test_cds/resource/locator.resource

*** Keywords ***
Open Main Page
    New Browser    chromium    headless=False
    New Page    ${URL}    wait_until=domcontentloaded
    Wait For Elements State    ${TEXT_SEARCH}    visible    timeout=10s

SEARCH ITEM ID
    [Documentation]  Create Order
    [Arguments]    ${item_id}
    Click    ${TEXT_SEARCH}
    Type Text    ${TEXT_SEARCH}    ${item_id}
    Click    ${BUTTON_SEARCHITEM}
    Wait For Elements State    ${LABEL_SEARCHRESULT}  stable  timeout=5s
    Click    ${ITEM_A}
    Click    ${BUTTON_ADDTOBAG}
    Wait For Elements State    ${SHOW_ITEM}    visible    timeout=2s
    Sleep    5s

CHECKOUT_SHOPPINGBAG
    [Documentation]   Show Shopping bag detail
    Click    ${ICON_BAG}
    Wait For Elements State    ${BUTTON_CHECKOUT}   visible    timeout=10s
    Click    ${BUTTON_CHECKOUT}
    Sleep    3s
    Click    ${BUTTON_CONASGUEST}

DELIVERY INFO
    [Documentation]    fulfill delivery infomation
    [Arguments]    ${firstname}  ${lastname}  ${phone}  ${email}   ${address}   ${province}  ${distinct}   ${sub_distinct}  
    Wait For Elements State    ${BUTTON_ADDADRESS}    stable    timeout=5s
    Click    ${BUTTON_ADDADRESS}
    Click    ${TEXT_FIRSTNAME}
    Type Text    ${TEXT_FIRSTNAME}   ${firstname}
    Type Text    ${TEXT_LASTNAME}   ${lastname}
    Type Text    ${TEXT_PHONENUM}    ${phone}
    Type Text    ${TEXT_EMAIL}    ${email}
    Type Text    ${TEXT_ADDRESS}    ${address}
    Click    ${DROPDOWN_PROVINCE}
    Select Options By   ${DROPDOWN_PROVINCE}   text   ${province}
    Select Options By   ${DROPDOWN_DISTRICT}   text   ${distinct}
    Select Options By   ${DROPDOWN_SUBDISTRICT}   text   ${sub_distinct}
    Click    ${BUTTON_USEADDRESS}
    Sleep    3s

SELECT PAYMENT CREDITCARD
    [Documentation]    select Payment Medthod is Credit or Debit Card
    [Arguments]    ${cardno}   ${expirydate}   ${cvv}   ${nameoncard}
    Click    ${PAYMENT_CREDIT}
    Type Text    ${PAYMENT_CREDIT}    ${cardno}
    Click    ${EXPIRY_DATE}
    Type Text    ${EXPIRY_DATE}    ${expirydate}
    Click    ${CVV}
    Type Text    ${CVV}    ${cvv}
    Click    ${NAMEONCARD}
    Type Text    ${NAMEONCARD}    ${nameoncard}
    Log To Console    detail
    

    
    



