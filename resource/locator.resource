*** Settings ***
Library    Browser

*** Variables ***
${URL}    https://aem-uat.central.co.th/en/
${LOGO}    //*[@alt="CentralLogo"]
${TEXT_SEARCH}    //*[@placeholder="Search for products and brands"]
${BUTTON_SEARCHITEM}    //*[@class="aa-SubmitIcon"]
${LABEL_SEARCHRESULT}    //*[text()="Search Result"]
# ${ITEM_A}    //*[@data-testid="lnk-viewProduct-productListCDS25400816"]
${ITEM_A}    //*[@class="flip-card-front"]
${BUTTON_ADDTOBAG}    //*[@class="add-to-cart "]
${SHOW_ITEM}    //*[@data-testid="btn-viewCart-bag"]
${ICON_BAG}    //*[@data-testid="btn-viewCart-bag"]
${BUTTON_CHECKOUT}    //*[@id="btn-saveCart-checkout"]
${BUTTON_CONASGUEST}    //*[@data-testid="lnk-login-guestLoginBtn"]
${BUTTON_ADDADRESS}    //*[text()="Add a delivery address"]

##ADDRESS INFO
${TEXT_FIRSTNAME}    //*[@id="firstNameTxtbx"]
${TEXT_LASTNAME}    //*[@id="lastNameTxtbx"]
${TEXT_PHONENUM}    //*[@id="phoneNoTxtbx"]
${TEXT_EMAIL}       //*[@id="emailTxtbx"]
${TEXT_ADDRESS}    //*[@id="addressTxtbx"]
${DROPDOWN_PROVINCE}    //*[@id="selectProvience"]    
# ${PROVICE_BKK}    //option[@id="bkk"]
${DROPDOWN_DISTRICT}    //*[@id="selectDistrict"]
# ${DISTRICT_BANGBON}    //option[@id="92" and @value="bkk_khet_bang_bon"] 
${DROPDOWN_SUBDISTRICT}    //*[@id="selectSubDistrict"]
# ${SUBDISTRICT_BANGBON}    //option[@district_id="92" and @value="khet_bang_bon_bang_bon-395"]
${BUTTON_USEADDRESS}    //*[@id="submitAddAddress"]

## Payment Medthod = Credit Card ##
${PAYMENT_CREDIT}    //*[@id="spcCardTitleChevron"]
${EXPIRY_DATE}    //*[@id="expiryDate"]
${CVV}    //*[@id="cvvNumber"]
${NAMEONCARD}    //*[@id="cardName"]


