Given("The app launches to the first on-boarding screen") do
  find_element(id: "Go Anywhere")
end

When("The app opens, the on boarding screen will display and I confirm the page has a skip button") do
  find_element(id: "Skip")
end

Then("I will swipe to the next page") do
  execute_script "mobile: swipe", direction: "left"
end

Then("I confirm the second page has a skip button") do
  find_element(id: "Skip")
end

Then("I confirm the third page has a skip button") do
 find_element(id: "Skip")
end

Then("I confirm the fourth page has a skip button") do
 find_element(id: "Skip")
end

Then("I confirm the fifth page has a Done button") do
  find_element(id: "Done")
end

Then("I will click on the Done button") do
 find_element(id: "Done").click
end

Then("I will be taken the the main map launch page") do
 find_element(id: "Map")
end
