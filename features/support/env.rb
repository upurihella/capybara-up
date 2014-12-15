require "rspec/expectations"
require "capybara/cucumber"
require "selenium-webdriver"
require "timeout"

# using the selenium driver as default so that we can pull up Firefox

capybara.default_driver = :selenium 
