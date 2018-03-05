Feature: Onboarding Screen to orientate new users and returning users to app

  Background:
    Given The app launches to the first on-baording screen
@test
  Scenario:
    When The app opens, the on boarding screen will display and I confirm the page has a skip button
    Then I will swipe to the next page
    And I confirm the second page has a skip button
    Then I will swipe to the next page
    And I confirm the third page has a skip button
    Then I will swipe to the next page
    And I confirm the fourth page has a skip button
    Then I will swipe to the next page
    And I confirm the fifth page has a Done button
    Then I will click on the Done button
    And I will be taken the the main map launch page