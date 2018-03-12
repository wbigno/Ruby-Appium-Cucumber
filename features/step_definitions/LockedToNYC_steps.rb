When("I launch the app I should be taken to the map page with the base of Manhattan in view") do
  find_element(name: "Guttenberg").displayed?
end

Then("Confirm the Banner saying Area in beta is displayed, and not able to be swiped closed") do
  if find_element(id: "Area is still in beta & information may be incomplete.").displayed?
  page = find_element(id: "Area is still in beta & information may be incomplete.")
  execute_script "mobile: swipe", direction: "up", element: page
  else fail("Banner failed to display area is in Beta")
    end
end

Then("Confirm I will see a pop up, and I can click on the Fly me to NYC button") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 30)
  wait.until {
    element = find_element(accessibility_id: "NYC is our first Live city. We will notify you when other cities launch.")
    element if element.displayed?
  }
  find_element(id: "Fly me to NYC").click
end

Then("Confirm I was taken back to initial map view from launch") do
  find_element(name: "Guttenberg").displayed?
end

Then("I will close the legend if it is open") do
  if find_element(id: "Events").displayed?
    page = find_element(id: "Events")
    execute_script "mobile: swipe", direction: "down", element: page
  end
end


Then("I will Pan the map to the left") do
  2.times{execute_script "mobile: swipe", direction: "left"}
end

Then("I will Pan the map to the right") do
  3.times{execute_script "mobile: swipe", direction: "right"}
end

Then("I will pan the map down") do
  3.times{execute_script "mobile: swipe", direction: "down"}
end

Then("I will Pan the map up") do
  4.times{execute_script "mobile: swipe", direction: "up"}
end

Then("I can click the setting icon and signout and confirm I am taken to the Sign in and Sign up screen") do
  find_element(accessibility_id: "settings icon darkmap").click
  find_element(accessibility_id: "Sign Out").click
  find_element(accessibility_id: "SIGN UP").displayed?
end
