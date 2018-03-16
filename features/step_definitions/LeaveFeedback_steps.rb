When("I click on the gear setting icon, I should see a list of options that include Invite Friends, Leave Feedback, Getting Started") do
  if find_element(accessibility_id: "settings icon lightmap").displayed?
      find_element(accessibility_id: "Leave Feedback")
    else find_element(accessibility_id: "settings icon darkmap").click
        find_element(accessibility_id: "Leave Feedback")
  end
end

When("I click on the Leave Feedback button, I should see the feedback modal") do
  find_element(accessibility_id: "Leave Feedback").click
  state = find_element(accessibility_id: "SEND FEEDBACK")
    state.displayed?
    state.enabled?
end

When("I can add feedback in the text box") do
  find_element(xpath: "//XCUIElementTypeApplication[@name='Live XYZ']/
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
      find_element(name: "“Live dev” Would Like to Access Your Photos").displayed?
        a = switch_to.alert
        a.find_element(accessibilty_id: "Don't Allow").click

  find_element(xpath: "//XCUIElementTypeApplication[@name='Live dev']/XCUIElementTypeWindow[1]/
    XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/
    XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther").click
      find_element(name: "“Live dev” Would Like to Access the Camera").displayed?
        a = switch_to.alert
        a.find_element(accessibilty_id: "Don't Allow").click
end

Then("I should be able to click on the Send Feedback button to submit it") do
  find_element(accessibility_id: "SEND FEEDBACK").click
  find_element(name: "Thank you for your feedback!")
  a = switch_to.alert
  a.accept
end
