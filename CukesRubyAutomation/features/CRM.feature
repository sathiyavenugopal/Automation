Feature: Google Search

Scenario Outline: Google Search
Given I visit the url "https://www.google.co.in/"
When I fill list of values from column <KeyWord> in the input field "q"
When I click the button "btng"
Then Sleep for "15" seconds
Then The expected text appears on page <expected>

Examples:
    | KeyWord                   | Expected              |
    | Testing Keywork google    | Testing Keywork google|
    
