When("I enter a search to pull up a venue card") do
  el = TouchAction.new.tap({x: 184, y: 600})
  el.perform
  el.send_keys("Brooklyn Bowl")
  el.click

  find_element(accessibility_id: "Brooklyn Bowl").click

end

Then("I scroll down the card to check some buttons") do
  Appium::TouchAction.new.press({x: 184, y: 512}).move_to({x: 0, y: -251}).release.perform
end

Then("I will click on the Call button") do
  find_element(xpath: "//XCUIElementTypeApplication[@name='Live dev']/XCUIElementTypeWindow[1]/
XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/
XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther/
XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/
XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]")
end

Then("I will confirm the Call pop up appears and press cancel") do
  puts("Need id to grab icon")
end

Then("I will click on the Go There button") do
  puts("Need id to grab icon")
end

Then("I will confirm the direction options appears and I will press cancel") do
  find_element(accessibility_id: "Get directions in Apple Maps").displayed?
  find_element(accessibility_id: "Cancel").click

end

Then("I will click on the share button") do
  puts("Need id to grab icon")
end

Then("I will confirm the share options appear and I will press cancel") do
  find_element(accessibility_id: "More").displayed?
  find_element(accessibility_id: "Cancel").click
end

Then("I will check to see if they have View Menu and Services link, and if they do I will click on it") do
  puts("Need id  to be visible == true")
  # find_element(accessibility_id: "View Menu and Services").click
end

Then("I will confirm that the Images open correctly and then I will close it") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I will click on the Venues Address") do
  puts("Need id to grab icon")
end

Then("I will click on the Venues Phone Number") do
  puts("Need id to grab icon")
end

Then("I will click on the Venues Hours, and confirm they expand") do
  puts("Need id to grab icon")
end

Then("I will confirm if they have a website link, and if so I will click on it") do
  #find_element(name: "www~")
  #find_element(xpath "//*[contains(@text, '" + "www" + "')]")
  #find_element(xpath: "//XCUIElementTypeButton[@name='URL']").text
end

Then("I will confirm I am taken to their website, and then I will return to the app") do
  url = find_element(xpath: "//XCUIElementTypeButton[@name='URL']").text
      url ==" brooklynbowl.com, secure and validated connection"
end

Then("I will confirm if they have an Instagram link, and if so I will click on it") do
  find_element(accessibility_id: "Instagram")
end

Then("I will confirm I am taken to their Instagram, and then I will return to the app") do
  url = find_element(xpath: "//XCUIElementTypeButton[@name='URL']").text
      url == "instagram.com, secure and validated connection"
end

Then("I will confirm if they have an Facebook link, and if so I will click on it") do
  find_element(accessibility_id: "Facebook")
end

Then("I will confirm I am taken to their Facebook, and then I will return to the app") do
  url = find_element(xpath: "//XCUIElementTypeButton[@name='URL']").text
      url == "facebook.com, secure and validated connection"
end
