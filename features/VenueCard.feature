Feature: As a user I want to see my venue details all in one place, where I can get all the related information about that specific venue

  Background:
    Given I have the app loaded and I am on the main map launch page
@wip
  Scenario: I want to check all the buttons on a card to make sure they work
    When I enter a search to pull up a venue card
    Then I scroll down the card to check some buttons
    And I will click on the Call button
    Then I will confirm the Call pop up appears and press cancel
    And I will click on the Go There button
    Then I will confirm the direction options appears and I will press cancel
    And I will click on the share button
    Then I will confirm the share options appear and I will press cancel
    And I will check to see if they have View Menu and Services link, and if they do I will click on it
    Then I will confirm that the Images open correctly and then I will close it
    And I will click on the Venues Address
    Then I will confirm the direction options appears and I will press cancel
    And I will click on the Venues Phone Number
    Then I will confirm the Call pop up appears and press cancel
    Then I scroll down the card to check some buttons
    And I will click on the Venues Hours, and confirm they expand
    And I will confirm if they have a website link, and if so I will click on it
    Then I will confirm I am taken to their website, and then I will return to the app
    And I will confirm if they have an Instagram link, and if so I will click on it
    Then I will confirm I am taken to their Instagram, and then I will return to the app
    And I will confirm if they have an Facebook link, and if so I will click on it
    Then I will confirm I am taken to their Facebook, and then I will return to the app


