Given("I have the app loaded and I am on the main map launch page") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 30)
  input = wait.until {
    element = find_element(accessibility_id: "Skip")
    element if element.displayed?
  }
    input.click
end

When("I my app launches on the dark map mode, I can click the setting icon") do
  find_element(accessibility_id: "settings icon darkmap").click
end

Then("I can click on the Light map button to change the mode") do
  find_element(accessibility_id: "Switch to Light Map").click
end

 And("The setting window will close and the map will be in Light map mode") do
   find_element(accessibility_id: "settings icon lightmap").displayed?
end

Then("I can click on the setting icon to change the mode back to Dark map") do
  find_element(accessibility_id: "settings icon lightmap").click
end

And("I just click on the Dark map button to change the mode") do
  find_element(accessibility_id: "Switch to Dark Map").click
end

Then("The setting window will close and the map will be in Dark map mode") do
  find_element(accessibility_id: "settings icon darkmap").displayed?
end
