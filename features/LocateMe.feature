Feature: I can easily find my location anytime on the map

  Background:
    Given I have the app loaded and I am on the main map launch page
@wip
  Scenario: I can locate my current position after I give the app permission
    When I click on the locate me button
    Then  I click on the locate me button I should receive a permission pop up alert
    And I can click on allow and the app will find my location on the map
    Then I will close the app and then open it back up
    And I click on the locate me button I should not receive a permission pop up alert
    Then I should be sent to my current location on the map
    Then I will delete the app and install the app
    And Will skip pass the on-boarding screen, if it loads
    And click on the locate me button
    Then I will see a pop up and should find my location on the map