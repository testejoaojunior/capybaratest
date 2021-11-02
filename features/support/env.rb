require "cucumber"

require "rspec"

require "json"
require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

Capybara.default_driver = :selenium
Capybara.app_host = "http://lojaebac.ebaconline.art.br/"

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new app, browser: :chrome
end