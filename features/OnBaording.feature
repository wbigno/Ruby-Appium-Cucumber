Feature: Onboarding Screen to orientate new users and returning users to app

  Background:
    Given The app is loaded and launched I will confirm I am on the on-boarding screen, if not Navigate to it

  Scenario:
    When confirm the page says Go Anywhere
    And I confirm the page has a skip button
    Then I will swipe to the next page
    And I confirm the page has a skip button
    Then I will swipe to the next page
    And  I confirm the page has a skip button
    Then I will swipe to the next page
    And  I confirm the page has a skip button
    Then I will swipe to the next page
    And I confirm the last page has a Done button
    Then I will click on the Done button
    And I will be taken the the main map launch page