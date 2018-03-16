Given("The app is loaded and launched I will confirm I am on the on-boarding screen, if not Navigate to it") do
  begin
   array = find_elements(id: "Go Anywhere")
    if array.size > 0
      puts ("Landed on the on-boarding screen at start up")
      array = find_elements(accessibility_id: "settings icon lightmap")
      elsif array.size > 0
        find_element(accessibility_id: "settings icon lightmap").click
        find_element(accessibility_id: "Getting Started").click
        puts ("Landed on the main map screen at start up, navigated to 'Getting Started'")
      else  find_element(accessibility_id: "settings icon darkmap").click
          find_element(accessibility_id: "Getting Started").click
          puts ("Landed on the main map screen at start up, navigated to 'Getting Started'")
      end
  rescue
   puts ("Unable to land on the on-boarding screen")
 end
end

When("confirm the page says Go Anywhere") do
  find_element(id: "Go Anywhere").displayed?
end

Then("I will swipe to the next page") do
  execute_script "mobile: swipe", direction: "left"
end

Then("I confirm the page has a skip button") do
  state = find_element(id: "Skip")
    state.displayed?
    state.enabled?
end

Then("I confirm the last page has a Done button") do
  state = find_element(id: "Done")
    state.displayed?
    state.enabled?
end

Then("I will click on the Done button") do
 find_element(id: "Done").click
end

Then("I will be taken the the main map launch page") do
 find_element(id: "Map")
end
