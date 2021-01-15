*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Keywords ***
Open flipkart application
  Open Browser  ${url}  ${brow}
  Maximize Browser Window

Input mobile number,password and click on login button
  Input Text  ${mobile_no}  8147560015
  Input Text  ${password}  Tiger123
  Click Element  ${login}  

Navigate to electronics category and selecting a sub category
  sleep  2s
  Mouse Over  ${electronics}
  sleep  1s
  Click Element  ${apple}
  sleep  2s
  capture page screenshot  D:/flipkart/screenshots/iphone8.png

Clicking on iphone 8
  sleep  5s
  Execute Javascript  window.scrollTo(0, 500)
  Click Element  ${iphone8}

Selecting Apple iphone 8(Silver,256GB)
  sleep  2s
  Click Element  ${silver_256gb}

Adding the phone to cart
  select window  Apple iPhone 8 ( 256 GB Storage, 0 GB RAM ) Online at Best Price On Flipkart.com  
  sleep  2s
  capture page screenshot  D:/flipkart/screenshots/product.png
  Click Element  ${add_to_cart}
  sleep  2s
  capture page screenshot  D:/flipkart/screenshots/addtocart.png

Navigating to home page and clicking on your cart
  sleep  4s
  Click Element  ${home}
  sleep  2s
  Click Element  ${your_cart}
  
Verifying Apple iphone 8(Silver,256GB) in your_cart
  Verifying web page  ${expected_phone}

Verifying web page
  [Arguments]  ${title_name}
    Wait Until Page Contains  ${title_name}
    Log to Console  ${title_name}
    Log to Console  Pass!!
  

  

