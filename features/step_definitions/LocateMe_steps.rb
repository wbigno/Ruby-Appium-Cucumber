When("I click on the locate me button") do
  begin
    array = find_elements(accessibility_id: "zoom to me lightmap icon")
    if array.size > 0
      find_element(accessibility_id: "zoom to me lightmap icon").click
    else
      find_element(accessibility_id: "zoom to me darkmap icon").click
    end
  end
end

Then("I click on the locate me button I should receive a permission pop up alert") do
  find_element(name: "Live XYZ Would Like to Use Your Location")
  state = find_element(name: "Maybe Later")
  state.displayed?
  state.enabled?
  state = find_element(name: "Give Permission")
  state.displayed?
  state.enabled?
  state.click
  begin
    array = find_elements(:xpath, "//XCUIElementTypeCell[@name=\"Location\"]")
    if array.size > 0
      find_element(:xpath, "//XCUIElementTypeCell[@name=\"Location\"]").click
      find_element(:xpath, "//XCUIElementTypeCell[@name=\"While Using the App\"]").click
      puts ("Sent to Privacy Setting Page")
      find_element(:accessibility_id, "Return to Live XYZ").click
    end
  rescue
    puts ("Attempted to accept permissions from Setting page, error occurred outside of application control")
  end
end

And("I can click on allow and the app will find my location on the map") do
  find_element(accessibility_id: "You Are Here").displayed?
end

Then("I will close the app and then open it back up") do
  background_app 5
end

And("I click on the locate me button I should not receive a permission pop up alert") do
  array = find_elements(accessibility_id: "zoom to me lightmap icon")
  if array.size > 0
    find_element(accessibility_id: "zoom to me lightmap icon").click
  else
    find_element(accessibility_id: "zoom to me darkmap icon").click
  end
end

Then("I should be sent to my current location on the map") do
  find_element(accessibility_id: "You Are Here").displayed?
end

Then("I will delete the app and install the app") do
  launch_app
end

Then("Will skip pass the on-boarding screen, if it loads") do
  begin
    wait = Selenium::WebDriver::Wait.new(:timeout => 30)
    input = wait.until {
      element = find_element(accessibility_id: "Skip")
      element if element.displayed?
    }
    input.click
    puts ("Landed on the on-boarding screen at start up")
  rescue
    puts ("Landed on the map launch page")
  end
end

Then("click on the locate me button") do
  array = find_elements(accessibility_id: "zoom to me lightmap icon")
  if array.size > 0
    find_element(accessibility_id: "zoom to me lightmap icon").click
  else
    find_element(accessibility_id: "zoom to me darkmap icon").click
  end
end

Then("I will see a pop up and should find my location on the map") do
  find_element(name: "Live XYZ Would Like to Use Your Location")
  state = find_element(name: "Maybe Later")
  state.displayed?
  state.enabled?
  state = find_element(name: "Give Permission")
  state.displayed?
  state.enabled?
  state.click
  begin
    array = find_elements(:xpath, "//XCUIElementTypeCell[@name=\"Location\"]")
    if array.size > 0
      find_element(:xpath, "//XCUIElementTypeCell[@name=\"Location\"]").click
      find_element(:xpath, "//XCUIElementTypeCell[@name=\"While Using the App\"]").click
      puts ("Sent to Privacy Setting Page")
      find_element(:accessibility_id, "Return to Live XYZ").click
    end
  rescue
    puts ("Attempted to accept permissions from Setting page, error occurred outside of application control")
  end
end
