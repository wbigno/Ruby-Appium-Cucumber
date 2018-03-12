When("I click on the locate me button") do
  find_element(accessibility_id: "zoom to me darkmap icon").click
end

Then("I click on the locate me button I should receive a permission pop up alert") do
  find_element(name: "Allow “Live XYZ” to access your location while you are using the app?")
  find_element(name: "Allow").click
end

And("I can click on allow and the app will find my location on the map") do
  find_element(accessibility_id: "You Are Here").displayed?
end

Then("I will close the app and then open it back up") do
  background_app 5
end

And("I click on the locate me button I should not receive a permission pop up alert") do
  find_element(accessibility_id: "zoom to me darkmap icon").click
end

Then("I should be sent to my current location on the map") do
  find_element(accessibility_id: "You Are Here").displayed?
end

Then("I will delete the app and install the app") do
  launch_app
end

Then("Will skip pass the onboarding screen") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 60)
  input = wait.until {
    element = find_element(accessibility_id: "Skip")
    element if element.displayed?
  }
  input.click
end

Then("click on the locate me button") do
  find_element(accessibility_id: "zoom to me darkmap icon").click
end

Then("I will see a pop up and should find my location on the map") do
  find_element(name: "Allow “Live XYZ” to access your location while you are using the app?")
  find_element(name: "Allow").click
  find_element(accessibility_id: "You Are Here").displayed?
end
