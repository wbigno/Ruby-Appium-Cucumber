When("I click on the gear setting icon, I should see a list of options that include Invite Friends, Leave Feedback, Getting Started") do
  begin
    array = find_elements(accessibility_id: "settings icon lightmap")
    if array.size > 0
      find_element(accessibility_id: "settings icon lightmap").click
      puts ("Landed on the main map screen at start up in light map mode")
    else
      find_element(accessibility_id: "settings icon darkmap").click
      puts ("Landed on the main map screen at start up in dark map mode")
    end
  rescue
    puts ("Unable to located the setting icon")
  end
  find_element(accessibility_id: "Invite Friends").displayed?
  find_element(accessibility_id: "Leave Feedback").displayed?
  find_element(accessibility_id: "Getting Started").displayed?
  find_element(accessibility_id: "Sign Out").displayed?
  find_element(accessibility_id: "Cancel").displayed?
end

When("I click on the Leave Feedback button, I should see the feedback modal") do
  find_element(accessibility_id: "Leave Feedback").click
  state = find_element(accessibility_id: "SEND FEEDBACK")
  state.displayed?
  state.enabled?
end

When("I can add feedback in the text box") do
  find_element(xpath: "//XCUIElementTypeApplication[@name='Live dev']/
  XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/
  XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]").send_keys("Test")
end

When("I should see Four types of feedback, and they should be Displayed and enabled") do
  state = find_element(accessibility_id: "General")
  state.displayed?
  state.enabled?
  state.click
  state = find_element(accessibility_id: "Content")
  state.displayed?
  state.enabled?
  state.click
  state = find_element(accessibility_id: "Feature Request")
  state.displayed?
  state.enabled?
  state.click
  state = find_element(accessibility_id: "Bug")
  state.displayed?
  state.enabled?
  state.click
end

When("I want to verify that the camera and photo album buttons work, and I am asked for access when clicked on") do
  find_element(xpath: "//XCUIElementTypeApplication[@name='Live dev']/XCUIElementTypeWindow[1]/
    XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/
    XCUIElementTypeCollectionView/XCUIElementTypeCell[3]/XCUIElementTypeOther/XCUIElementTypeOther").click
  alert_dismiss

  find_element(xpath: "//XCUIElementTypeApplication[@name='Live dev']/XCUIElementTypeWindow[1]/
    XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/
    XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther").click
  alert_dismiss
end

Then("I should be able to click on the Send Feedback button to submit it") do
  find_element(accessibility_id: "SEND FEEDBACK").click
  find_element(name: "Thank you for your feedback!")
  alert_accept
end
