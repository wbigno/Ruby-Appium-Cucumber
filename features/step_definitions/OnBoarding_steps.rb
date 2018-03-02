Given("The app launches to the first on-baording screen") do
  binding.pry
end

When("The app opens, the on boarding screen will display and I confirm the page has a skip button") do
  text(Skip)
end

Then("I will swipe to the next page") do
  Appium::TouchAction.new.swipe(start_x: 0.99 , start_y: 0.5, end_x: 0.01, end_y: 0.5, duration:600).perform
end

Then("I confirm the second page has a skip button") do
text(Skip)
end

Then("I confirm the third page has a skip button") do
  text(Skip)
end

Then("I confirm the fourth page has a skip button") do
  text(Skip)
end

Then("I confirm the fifth page has a Done button") do
  text(Done)
end

Then("I will click on the Done button") do
  find_element(accessibility_id: "Done").click
end

Then("I will be taken the the main map launch page") do
  text(Map)
end
