When("I click on the map icon I will go to the Maplists page") do
  find_element(accessibility_id: "profile icon").click
end

 And("I can create a new list by clicking the large plus icon") do
   find_element(xpath: "//XCUIElementTypeApplication[@name='Live XYZ']/XCUIElementTypeWindow[1]/
  XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton").click
 end

Then("after I enter the name of my new list I can click create map") do
  find_element(xpath: "//XCUIElementTypeApplication[@name='Live XYZ']/XCUIElementTypeWindow[2]").send_keys("New Map")
  find_element(accessibility_id: "CREATE MAP").click
 end

And("I shoiuld be taken back to the Maplists page, and I can click the back arrow to return to the main map page") do
  find_element(accessibility_id: "back icon").click
end

Then("To see my new maplist I can click on the map icon, and my new maplist will be visible") do
  find_element(accessibility_id: "profile icon").click
  find_element(accessibility_id: "New Map")
end

