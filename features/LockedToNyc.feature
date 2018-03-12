@lockedToNYC
Feature: As a new user in NYC during the initial launch there is no access outside of NYC

  Background:
    Given I have the app loaded and I am on the main map launch page

  @LockedToNYCTest
  Scenario: During the initial launch I only have access to NYC
    When I launch the app I should be taken to the map page with the base of Manhattan in view
    And I will close the legend if it is open
    Then I will Pan the map to the left
    And Confirm the Banner saying Area in beta is displayed, and not able to be swiped closed
    Then I will Pan the map to the left
    And Confirm I will see a pop up, and I can click on the Fly me to NYC button
    Then Confirm I was taken back to initial map view from launch
    And I will close the legend if it is open
    Then I will Pan the map to the right
    And Confirm the Banner saying Area in beta is displayed, and not able to be swiped closed
    Then I will Pan the map to the right
    And Confirm I will see a pop up, and I can click on the Fly me to NYC button
    Then Confirm I was taken back to initial map view from launch
    And I will close the legend if it is open
    Then I will pan the map down
    And Confirm the Banner saying Area in beta is displayed, and not able to be swiped closed
    Then I will pan the map down
    And Confirm I will see a pop up, and I can click on the Fly me to NYC button
    Then Confirm I was taken back to initial map view from launch
    And I will close the legend if it is open
    Then I will Pan the map up
    And Confirm the Banner saying Area in beta is displayed, and not able to be swiped closed
    Then I will Pan the map up
    And Confirm I will see a pop up, and I can click on the Fly me to NYC button
    Then Confirm I was taken back to initial map view from launch
    Then I can click the setting icon and signout and confirm I am taken to the Sign in and Sign up screen