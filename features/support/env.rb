require "rspec/expectations"
require "capybara/cucumber"
require "selenium-webdriver"
require "timeout"

# using the selenium driver as default so that we can pull up Firefox

Capybara.default_driver = :selenium 
