require 'rubygems'
require 'rspec/expectations'
require 'appium_lib'
require 'selenium-webdriver'
require 'appium_lib/ios/xcuitest'
require '../../features/support/env'
require '../../features/support/hooks'
require 'appium_lib/ios/xcuitest/element/text'
require 'test/unit'

When("I click on the gear setting icon, I should see a list of options that include Invite Friends, Leave Feedback, Getting Started") do
  $driver.find_element(accessibility_id: "settings icon darkmap").click
  assert_true('Leave Feedback', $driver.find_element(accessibility_id: 'Leave Feedback').text, msg = nil)
end

When("I click on the Leave Feedback button, I should see the feedback modal") do
  $driver.find_element(accessibility_id: "Leave Feedback").click
  assert_true('SEND FEEDBACK', $driver.find_element(accessibility_id: 'SEND FEEDBACK').text, msg = nil)
end

When("I can add feedback in the text box") do
  $driver.find_element(xpath: "//*[@name='Live dev']/XCUIElementTypeWindow[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeScrollView[1]/XCUIElementTypeOther[1]").sendKeys(Test)
end

When("I should see Four types of feedback, and should select one option") do
  assert_true('Bug', $driver.find_element(accessibility_id: 'Bug').text, msg = nil)
  assert_true('General', $driver.find_element(accessibility_id: 'General').text, msg = nil)
  assert_true('Content', $driver.find_element(accessibility_id: 'Content').text, msg = nil)
  assert_true('Feature Request', $driver.find_element(accessibility_id: 'Feature Request').text, msg = nil)
end

Then("I should be able to click on the Send Feedback button to submit it") do
  $driver.find_element(accessibility_id: 'SEND FEEDBACK').click
  assert_true('Thank you for your feedback', $driver.find_element(xpath: "/*[@name='Thank you for your feedback!']").text, msg = nil)
  a = switch_to.alert
  a.accept
end
