Feature: To organize some cool lists of venues and events, I can create our own map lists

  Background:
    Given I have the app loaded and I am on the main map launch page

  Scenario: I will create a new map list that I can use to add venues and events to so I can have custom lists
    When I click on the map icon I will go to the Maplists page
    And I can create a new list by clicking the large plus icon
    Then after I enter the name of my new list I can click create map
    And I shoiuld be taken back to the Maplists page, and I can click the back arrow to return to the main map page
    Then To see my new maplist I can click on the map icon, and my new maplist will be visible 