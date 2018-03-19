Given("I am on the Maplist profile page") do
  begin
    array = find_elements(accessibility_id: "profile icon")
    if array.size > 0
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      input = wait.until {
        element = find_element(accessibility_id:  "profile icon")
        element if element.displayed?
      }
      input.click
    elsif array.size == 0
      find_element(id: "Skip").click
      find_element(accessibility_id: "profile icon").click
    end
  rescue
    puts ("Unable to land on the Maplist Profile page to execute Edit Profile tests")
  end
end

When("I click on the three dots on the Maplist profile page, I will be taken to my user profile page") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  input = wait.until {
    element = find_element(accessibility_id: "dotdotdot icon")
    element if element.displayed?
  }
  input.click
  find_element(xpath: "//XCUIElementTypeNavigationBar[@name='Edit Profile']").displayed?
end

Then("I can edit my Email, Display Name, and Handle") do
  @email = find_element(xpath: "//XCUIElementTypeApplication[@name='Live dev']/XCUIElementTypeWindow[1]/
XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/
XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeTextField")
  @originalEmailAddress = @email.text
  @email.displayed?
  @email.enabled?

  @name = find_element(xpath: "//XCUIElementTypeApplication[@name='Live dev']/XCUIElementTypeWindow[1]/
XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/
XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeTextField")
  @originalDisplayName = @name.text
  @name.displayed?
  @name.enabled?

  @handle = find_element(xpath: "//XCUIElementTypeApplication[@name='Live dev']/XCUIElementTypeWindow[1]/
XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/
XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeTextField")
  @originalHandle = @handle.text
  @handle.displayed?
  @handle.enabled?
end

Then("If I do not make any changes the Save button is not clickable") do
  begin
  state = find_element(accessibility_id: "SAVE").enabled?
    puts("Save button expected false, and found #{state} check Passed")
  rescue
    puts("Save button expected false, and found #{state} check Failed")
  end
end

Then("I can click on save") do
  find_element(accessibility_id: "SAVE").click
end

Then("I can click the back arrow, and be taken back to the Maplist profile page") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  input = wait.until {
    element = find_element(accessibility_id: "back icon")
    element if element.displayed?
  }
  input.click
end

Then("I will restore the original values of my profile before ending the test") do
  @email.click
  @email.clear
  @email.send_keys(@originalEmailAddress)

  @name.click
  @name.clear
  @name.send_keys(@originalDisplayName)

  @handle.click
  @handle.clear
  @handle.send_keys(@originalHandle)
end

Then("I will remove the text from the email, display name and handle fields") do
  @email.click
  @email.clear

  @name.click
  @name.clear

  @handle.click
  @handle.clear
end

Then("I click on the email address, and enter the new address") do
  @email.send_keys("test123@test.com")
end

Then("I can click on my display name, and enter the new display name") do
  @name.send_keys("test123")
end

Then("I can click on my handle, and enter the new handle") do
  @handle.send_keys("test123")
end

Then("I will check to see if the fields have the correct input messages listed") do
  message = @email.value
  message == "Email"
  message = @name.value
  message == "Display Name (optional)"
  message = @handle.value
  message == "Handle (required)"
end

Then("I will enter an email address that is already in use") do
  @email.click
  @email.clear
  @email.send_keys("test@test.com")

end

Then("check for the Banner stating email already in use") do
  find_element(accessibility_id: "email is already in use").displayed?
end

Then("I will enter a Handle that is already in use") do
  @handle.click
  @handle.clear
  @handle.send_keys("langus")
end

Then("check for the Banner stating handle already in use") do
  find_element(accessibility_id: "handle is already in use").displayed?
end