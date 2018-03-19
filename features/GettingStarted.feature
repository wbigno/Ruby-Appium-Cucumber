Feature: I want some tips to get the most out of Live XYZ

  Background:
    Given I have the app loaded and I am on the main map launch page

  Scenario: I Click on Getting Started and scroll through the on-boarding screens
    When I click on the gear setting icon, I should see a list of options that include Invite Friends, Leave Feedback, Getting Started
    Then I click on Getting Started
    And I confirm the first on-boarding screen has a skip button
    And I will swipe to the next page
    And I confirm the page has a skip button
    And I will swipe to the next page
    And I confirm the page has a skip button
    And I will swipe to the next page
    And I confirm the page has a skip button
    And I will swipe to the next page
    And I confirm the last page has a Done button
    And I will click on the Done button
    Then I will be taken the the main map launch page