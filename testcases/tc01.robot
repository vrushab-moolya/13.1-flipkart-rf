*** Settings ***
Resource  ../operations/instructions.robot
Resource  ../operations/variables.robot

*** Test Cases ***
User should be able to add electronic device to cart
  [Tags]  demo
  Open flipkart application
  Input mobile number,password and click on login button
  Navigate to electronics category and selecting a sub category
  Clicking on iphone 8 
  Selecting Apple iphone 8(Silver,256GB)
  Adding the phone to cart
  Navigating to home page and clicking on your cart
  Verifying Apple iphone 8(Silver,256GB) in your_cart
  
