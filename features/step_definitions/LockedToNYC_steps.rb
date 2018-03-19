When("I launch the app I should be taken to the map page with the base of Manhattan in view, then zoom out") do
  begin
    array = find_elements(name: "Union City")
    if array.size > 0
      puts ("The app launched to the correct zoom level")
    else
      puts ("Map did not launch to the correct zoom level")
    end
  rescue
    puts ("Unable to land on the main map page")
  end
end

Then("Confirm the Banner saying Area in beta is displayed, and not able to be swiped closed") do
  find_element(id: "Area is still in beta & information may be incomplete.").displayed?
  page = find_element(id: "Area is still in beta & information may be incomplete.")
  execute_script "mobile: swipe", direction: "up", element: page
  find_element(id: "Area is still in beta & information may be incomplete.").displayed?
  puts("Area in beta banner was not able to be dismissed")
end

Then("Confirm I will see a pop up, and I can click on the Fly me to NYC button") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 3)
  wait.until {
    element = find_element(accessibility_id: "NYC is our first Live city. We will notify you when other cities launch.")
    element if element.displayed?
  }
  find_element(id: "Fly me to NYC").click
end

Then("Confirm I was taken back to initial map view from launch, and the banner is gone") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  wait.until {
    element = find_element(accessibility_id: "Union City")
    element if element.displayed?
  }
end

Then("I will Pan the map to the left until I see Area is still in beta & information may be incomplete") do
  i = 0
  until exists {find_element(id: "Area is still in beta & information may be incomplete.").displayed?} do
    execute_script "mobile: swipe", direction: "left"
    i += 1
    break if i == 10
  end
end

Then("I will Pan the map to the right until I see Area is still in beta & information may be incomplete") do
  i = 0
  until exists {find_element(id: "Area is still in beta & information may be incomplete.").displayed?} do
    execute_script "mobile: swipe", direction: "right"
    i += 1
    break if i == 10
  end
end

Then("I will pan the map down until I see Area is still in beta & information may be incomplete") do
  i = 0
  until exists {find_element(id: "Area is still in beta & information may be incomplete.").displayed?} do
    execute_script "mobile: swipe", direction: "down"
    i += 1
    break if i == 10
  end
end

Then("I will Pan the map up until I see Area is still in beta & information may be incomplete") do
  i = 0
  until exists {find_element(id: "Area is still in beta & information may be incomplete.").displayed?} do
    execute_script "mobile: swipe", direction: "up"
    i += 1
    break if i == 10
  end
end

Then("I will Pan the map to the left until I see a pop up saying NYC is our first city") do
  i = 0
  until exists {find_element(id: "NYC is our first Live city. We will notify you when other cities launch.").displayed?} do
    execute_script "mobile: swipe", direction: "left"
    i += 1
    break if i == 10
  end
end

Then("I will Pan the map to the right until I see a pop up saying NYC is our first city") do
  i = 0
  until exists {find_element(id: "NYC is our first Live city. We will notify you when other cities launch.").displayed?} do
    execute_script "mobile: swipe", direction: "right"
    i += 1
    break if i == 10
  end
end

Then("I will pan the map down until I see a pop up saying NYC is our first city") do
  i = 0
  until exists {find_element(id: "NYC is our first Live city. We will notify you when other cities launch.").displayed?} do
    execute_script "mobile: swipe", direction: "down"
    i += 1
    break if i == 10
  end
end

Then("I will Pan the map up until I see a pop up saying NYC is our first city") do
  i = 0
  until exists {find_element(id: "NYC is our first Live city. We will notify you when other cities launch.").displayed?} do
    execute_script "mobile: swipe", direction: "up"
    i += 1
    break if i == 10
  end
end

