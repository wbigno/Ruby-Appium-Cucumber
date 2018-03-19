Then("I click on Getting Started") do
  find_element(accessibility_id: "Getting Started").click
end
Then("I confirm the first on-boarding screen has a skip button") do
  find_element(accessibility_id: "Skip")
end
