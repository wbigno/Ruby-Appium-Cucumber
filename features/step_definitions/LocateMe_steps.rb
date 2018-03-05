require 'rubygems'
require 'rspec/expectations'
require 'appium_lib'
require 'selenium-webdriver'
require 'appium_lib/ios/xcuitest'
require '../../features/support/env'
require '../../features/support/hooks'
require 'appium_lib/ios/xcuitest/element/text'
require 'test/unit'

When("I click on the locate me button") do
  @driver.find_element(accessibility_id: "zoom to me darkmap icon").click
end

Then("I click on the locate me button I should receive a permission pop up alert") do

end

And("I can click on allow and the app will find my location on the map") do
  a = switch_to.alert
  a.accept
  assert(@driver.find_element(accessibility_id: "You Are Here").displayed?)
end

Then("I will close the app and then open it back up") do
  @driver.close
  @driver.launch
  @driver.find_element(accessibility_id: "Skip").click
  @driver.find_element(accessibility_id: "zoom to me darkmap icon").click
end

And("I click on the locate me button I should not receive a permission pop up alert") do
  @driver.find_element(accessibility_id: "zoom to me darkmap icon").click
end

Then("I should be sent to my current location on the map") do
  assert(@driver.find_element(accessibility_id: "You Are Here").displayed?)
end