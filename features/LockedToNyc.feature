@lockedToNYC
Feature: As a new user in NYC during the initial launch there is no access outside of NYC

  Background:
    Given I have the app loaded and I am on the main map launch page

  Scenario: During the initial launch I only have access to NYC
    When I launch the app I should be taken to the map page with the base of Manhattan in view, then zoom out
    Then I will Pan the map to the left until I see Area is still in beta & information may be incomplete
    And Confirm the Banner saying Area in beta is displayed, and not able to be swiped closed
    Then I will Pan the map to the left until I see a pop up saying NYC is our first city
    And Confirm I will see a pop up, and I can click on the Fly me to NYC button
    Then Confirm I was taken back to initial map view from launch, and the banner is gone
    Then I will Pan the map to the right until I see Area is still in beta & information may be incomplete
    And Confirm the Banner saying Area in beta is displayed, and not able to be swiped closed
    Then I will Pan the map to the right until I see a pop up saying NYC is our first city
    And Confirm I will see a pop up, and I can click on the Fly me to NYC button
    Then Confirm I was taken back to initial map view from launch, and the banner is gone
    Then I will pan the map down until I see Area is still in beta & information may be incomplete
    And Confirm the Banner saying Area in beta is displayed, and not able to be swiped closed
    Then I will pan the map down until I see a pop up saying NYC is our first city
    And Confirm I will see a pop up, and I can click on the Fly me to NYC button
    Then Confirm I was taken back to initial map view from launch, and the banner is gone
    Then I will Pan the map up until I see Area is still in beta & information may be incomplete
    And Confirm the Banner saying Area in beta is displayed, and not able to be swiped closed
    Then I will Pan the map up until I see a pop up saying NYC is our first city
    And Confirm I will see a pop up, and I can click on the Fly me to NYC button
    Then Confirm I was taken back to initial map view from launch, and the banner is gone