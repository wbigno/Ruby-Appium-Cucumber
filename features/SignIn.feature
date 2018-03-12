Feature: I would like to Sign in to my cool app and use it

  Background:
      Given The App launches to the Sign Up and Sign In screen
    @wip
    Scenario: I will Sign in Successfully
      When I click on the Already have an account, Sign in button
      And Enter my phone number
      Then I will need to get the Verification code
      And Enter it
      Then I will Be Signed in
