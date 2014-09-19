require 'rubygems'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'

#require File.expand_path("../step_definitions/Steps.rb", File.dirname(__FILE__))

Capybara.default_driver = :selenium
Capybara.default_wait_time = 20

Capybara.register_driver :selenium do |app|
        Capybara::Selenium::Driver.new(app, :browser => :firefox)
    end

After do |scenario|
  if scenario.failed? then
    page.driver.browser.manage.window.resize_to(1024, 768)
    #page.save_screenshot(scenario.name + ".png")
	#page.save_page(scenario.name + ".html")
	encoded_img = page.driver.browser.screenshot_as(:base64)
	embed("data:image/png;base64,#{encoded_img}",'image/png')
  end
end
