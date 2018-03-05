require 'rubygems'
require 'rspec/expectations'
require 'appium_lib'
require 'selenium-webdriver'
require 'appium_lib/ios/xcuitest'
require '../../features/support/env'
require '../../features/support/hooks'
require 'appium_lib/ios/xcuitest/element/text'
require 'test/unit'

When("I click on the map icon I will go to the Maplists page") do
  $driver.find_element(accessibility_id: 'profile icon').click
end

 And("I can create a new list by clicking the large plus icon") do
   $driver.find_element(xpath: "//*[@name='Live dev'/XCUIElementTypeWindow[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeButton[1]").click
 end

Then("after I enter the name of my new list I can click create map") do
  $driver.find_element(accessibility_id: 'CREATE MAP').click
 end

And("I shoiuld be taken back to the Maplists page, and I can click the back arrow to return to the main map page") do
  $driver.find_element(accessibility_id: 'back icon').click
end

Then("To see my new maplist I can click on the map icon, and my new maplist will be visible") do
  $driver.find_element(accessibility_id: 'profile icon').click
end