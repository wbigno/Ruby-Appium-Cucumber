require 'rubygems'
require 'rspec/expectations'
require 'appium_lib'
require 'selenium-webdriver'
require 'appium_lib/ios/xcuitest'
require '../../features/support/env'
require '../../features/support/hooks'
require 'appium_lib/ios/xcuitest/element/text'
require 'test/unit'

Given("I have the app loaded and I am on the main map launch page") do
  $driver.find_element(accessibility_id: 'Skip').click
end

When("I my app launches on the dark map mode, I can click the setting icon") do
  $driver.find_element(accessibility_id: 'settings icon darkmap').click
end

Then("I can click on the Light map button to change the mode") do
  $driver.find_element(accessibility_id: 'Switch to Light Map').click
end

 And("The setting window will close and the map will be in Light map mode") do
   assert($driver.find_element(accessibility_id: 'settings icon lightmap').displayed?)
end

Then("I can click on the setting icon to change the mode back to Dark map") do
  $driver.find_element(accessibility_id: 'settings icon lightmap').click
end

And("I just click on the Dark map button to change the mode") do
  $driver.find_element(accessibility_id: 'Switch to Dark Map').click
end

Then("The setting window will close, the map will be Dark map mode") do
  assert($driver.find_element(accessibility_id: 'settings icon darkmap').displayed?)
end
