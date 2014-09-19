#-----------------Steps Definitions----------------------


# encoding=utf-8

#Author: Sathiya Venugopal
#Description: launch a browser and navigate to URL
#Arguments: 1. URL of the webpage with http/s
Given(/^I visit the url "([^"]*)"$/) do |url|
	visit url
end

#Author: Sathiya Venugopal
#Description: Enter a text input in a input field
#Arguments: 1. Input text 2. css of the input field
When(/^I fill the text "([^"]*)" in the input field "([^"]*)"$/) do |arg1,arg2|
	fill_in arg2,:with=>arg1
end 

#Author: Sathiya Venugopal
#Description: Enter a text input in a input field for Scenario Outline
#Arguments: 1. input table header 2. css of the input field
When(/^I fill list of values from column (.*?) in the input field "([^"]*)"$/) do |arg1,arg2|
	fill_in arg2,:with=>arg1
end 

#Author: Sathiya Venugopal
#Description: Click a button in the page
#Arguments: 1. button text
When (/^I click the button "([^"]*)"$/) do |buttonText|
	find(".button", :text=>buttonText).click
end

#Author: Sathiya Venugopal
#Description: Assert the expected page title
#Arguments: 1. Expected page title
Then(/^I am on the page "(.+?)"$/) do |pageTitle|
	page.has_title? pageTitle
end

#Author: Sathiya Venugopal
#Description: The text exists somewhere on page
#Arguments: 1. Text to ensure exists
Then(/^This text appears on page "([^"]*)"$/) do |arg1|
	page.should have_text(arg1)
end

#Author: Sathiya Venugopal
#Description: The text exists somewhere on page - Scenario Outline
#Arguments: 1. Expected text table header
Then(/^The expected text appears on page (.*)$/) do |arg1|
	page.should have_text(arg1)
end

#Author: Sathiya Venugopal
#Description: The text doesn't exist anywhere on page
#Arguments: 1. Text to ensure doesn't exist
Then(/^This text does not appear "([^"]*)" on page$/) do |arg1|
	page.should_not have_text(arg1)
end

#Author: Sathiya Venugopal
#Description: Click a hyperlink on a page
#Arguments: 1. linkhref text of the link
Then(/^I click the link "([^"]*)" on page$/) do |linkHref|
    page.find('a[href="' + linkHref + '"]').click
end

#Author: Sathiya Venugopal
#Description: Sleep for some time
#Arguments: 1. seconds 
Then(/^Sleep for "([^"]*)" seconds$/) do |sec|
    sleep(sec.to_i)
end