When("I click on the gear setting icon, I should see a list of options that include Invite Friends, Leave Feedback, Getting Started") do
  find_element(accessibility_id: "settings icon darkmap").click
  find_element(accessibility_id: "Leave Feedback")
end

When("I click on the Leave Feedback button, I should see the feedback modal") do
  find_element(accessibility_id: "Leave Feedback").click
  find_element(accessibility_id: "SEND FEEDBACK")
end

When("I can add feedback in the text box") do
  find_element(xpath: "//XCUIElementTypeApplication[@name='Live XYZ']/
  XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/
  XCUIElementTypeOther[1]").send_keys("Test")
end

When("I should see Four types of feedback, and should select one option") do
  find_element(accessibility_id: "Bug")
  find_element(accessibility_id: "General")
  find_element(accessibility_id: "Content")
  find_element(accessibility_id: "Feature Request")
end

Then("I should be able to click on the Send Feedback button to submit it") do
  find_element(accessibility_id: "SEND FEEDBACK").click
  find_element(name: "Thank you for your feedback!")
  a = switch_to.alert
  a.accept
end
