Feature: As a user I want to be able to leave feedback as I use this cool new app

  Background:
    Given I have the app loaded and I am on the main map launch page

  Scenario: I navigate to the Leave Feedback button under the gear setting icon to submit my awesome feedback
    When I click on the gear setting icon, I should see a list of options that include Invite Friends, Leave Feedback, Getting Started
    And I click on the Leave Feedback button, I should see the feedback modal
    And I can add feedback in the text box
    And I should see Four types of feedback, and should select one option
    Then I should be able to click on the Send Feedback button to submit it