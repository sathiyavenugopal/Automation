Feature: Automation Practice

Scenario: Login to CRM with valid credentials
Given I visit the url "https://test.salesforce.com/"
When I fill the text "pkathirvel@greendotcorp.com.qa4" in the input field "username"
When I fill the text "sfdcqa4!23" in the input field "pw"
When I click the button "Log in to Salesforce"
Then Sleep for "15" seconds
Then This text appears on page "QA4"

Scenario: Try to Login to CRM with incorrect username
Given I visit the url "https://test.salesforce.com/"
When I fill the text "pkathirvel@greendotcorp.com.testqa4" in the input field "username"
When I fill the text "test!23" in the input field "pw"
When I click the button "Log in to Salesforce"
Then Sleep for "5" seconds
Then This text appears on page "Your login attempt has failed. The username or password may be incorrect, or your location or login time may be restricted. Please contact the administrator at your company for help."

Scenario: Try to Login to CRM with incorrect password
Given I visit the url "https://test.salesforce.com/"
When I fill the text "pkathirvel@greendotcorp.com.qa4" in the input field "username"
When I fill the text "test!23" in the input field "pw"
When I click the button "Log in to Salesforce"
Then Sleep for "5" seconds
Then This text appears on page "Your login attempt has failed. The username or password may be incorrect, or your location or login time may be restricted. Please contact the administrator at your company for help."