When("I open the time modal I will see the sticky header read now-late on todays date") do
  binding.pry
  find_element(xpath: "//XCUIElementTypeApplication[@name=‘Live XYZ’]/XCUIElementTypeWindow[1]/
    XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/
    XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]").click #now till late tag in legend to open time modal

  find_element(accessibility_id: "Now - Late").displayed?

end

When("If I adjust the slider to a new time the sticky header will change to match") do
  find_element(xpath: "//XCUIElementTypeApplication[@name='Live dev]/XCUIElementTypeWindow[1]/
XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/
XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/
XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]") #slider to send keys to change time selection

end

Then("I will tap done and the modal will close and I can see the changes reflected in the legend") do
  #need an ID and for it to be visible
end

Then("I will tap the map and the modal will close and I can see the changes reflected in the legend") do
  find_element(xpath: "//XCUIElementTypeApplication[@name='Live dev']/XCUIElementTypeWindow[1]/XCUIElementTypeOther/
XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/
XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/
XCUIElementTypeOther[1]/XCUIElementTypeOther[1]").displayed? #sliderbar visible to confirm time modal is closed
end

Then("I drag the handle down and the modal will close and I can see the changes reflected in the legend") do
  find_element(xpath: "//*[contains(@name='Late')]") #should find the sticker header using suffix xpath
  find_element(xpath: "//*[ends-with(@name, 'Late')]")
  text = find_elements(xpath: "//*[ends-with(@name, 'Late')]")
end

Then("If I click on the reset button it will reset to Now-Late on todays date") do
  find_element(xpath: "/XCUIElementTypeApplication[@name='Live dev']/XCUIElementTypeWindow[1]/
XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/
XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton[2]") #reset button
end

When("If I adjust the date it will be reflected in the sticky header to match") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I can confirm that the map updates based on the new date selected") do
  find_element(xpath: "//XCUIElementTypeApplication[@name='Live dev']/XCUIElementTypeWindow[1]/
XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/
XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther/
XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeCollectionView") # date bar in time modal, should have 8 children XCUIElementTypeCell
end

Then("when I drag the handle down the modal will close and I can see the changes reflected in the legend") do
  pending # Write code here that turns the phrase above into concrete actions
end
