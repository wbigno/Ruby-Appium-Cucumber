require 'rubygems'
require 'rspec/expectations'
require 'appium_lib'
require 'selenium-webdriver'
require 'appium_lib/ios/xcuitest'
require 'appium_lib/ios/xcuitest/element/text'
require 'test/unit'
require 'true_class'



Given("The app launches to the first on-baording screen") do
  text('Go Anywhere')
end

When("The app opens, the on boarding screen will display and I confirm the page has a skip button") do
  assert(text('Skip').displayed?)
end

Then("I will swipe to the next page") do
  Appium::TouchAction.new.swipe(start_x: 0.99 , start_y: 0.5, end_x: 0.01, end_y: 0.5, duration:600).perform
end

Then("I confirm the second page has a skip button") do
  assert(text('Skip').displayed?)
end

Then("I confirm the third page has a skip button") do
  assert(text('Skip').displayed?)
end

Then("I confirm the fourth page has a skip button") do
  assert(text('Skip').displayed?)
end

Then("I confirm the fifth page has a Done button") do
  assert(text('Done').displayed?)
end

Then("I will click on the Done button") do
 $driver.find_element(accessibility_id: 'Done').click
end

Then("I will be taken the the main map launch page") do
  assert(text('Map').displayed?)
end
