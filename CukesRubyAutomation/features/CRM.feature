Feature: CRM Automation

Scenario Outline: CRM Login
Given I visit the url "https://test.salesforce.com/"
When I fill list of values from column <username> in the input field "username"
When I fill list of values from column <password> in the input field "pw"
When I click the button "Log in to Salesforce"
Then Sleep for "15" seconds
Then The expected text appears on page <expected>

Examples:
    | username 							| password| expected |
    | pkathirvel@greendotcorp.com.qa4   |sfdcqa4!23| qa4	  |
    