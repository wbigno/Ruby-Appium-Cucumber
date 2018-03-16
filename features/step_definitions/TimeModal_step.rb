When("I open the time modal I will see the sticky header read now-late on todays date") do
  binding.pry
  find_element(xpath: "//XCUIElementTypeApplication[@name=‘Live XYZ’]/XCUIElementTypeWindow[1]/
    XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/
    XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]").click

  find_element(accessibility_id: "Now - Late").displayed?

end

When("If I adjust the slider to a new time the sticky header will change to match") do
  #need an ID and for it to be visible
end

Then("I will tap done and the modal will close and I can see the changes reflected in the legend") do
  #need an ID and for it to be visible
end

Then("I will tap the map and the modal will close and I can see the changes reflected in the legend") do
  #need an ID and for it to be visible
end

Then("I drag the handle down and the modal will close and I can see the changes reflected in the legend") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("If I click on the reset button it will reset to Now-Late on todays date") do
  #need an ID and for it to be visible
end

When("If I adjust the date it will be reflected in the sticky header to match") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I can confirm that the map updates based on the new date selected") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("when I drag the handle down the modal will close and I can see the changes reflected in the legend") do
  pending # Write code here that turns the phrase above into concrete actions
end
