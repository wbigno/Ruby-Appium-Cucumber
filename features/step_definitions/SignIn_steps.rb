Given("The App launches to the Sign Up and Sign In screen") do
  if find_element(id: "SIGN UP").displayed?
  end
end

When("I click on the Already have an account, Sign in button") do
  find_element(id: "Already have an account? Sign in").click
end

When("Enter my phone number") do
  find_element(id: "Phone Number").send_keys(9292154166)
  find_element(id: "SEND CODE").click
end

Then("I will need to get the Verification code") do
  binding.pry
  find_element(id: "Live XYZ").click
end
Then("Enter it") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I will Be Signed in") do
  pending # Write code here that turns the phrase above into concrete actions
end
