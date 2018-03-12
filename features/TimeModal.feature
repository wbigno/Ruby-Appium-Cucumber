
Feature: I want to be able to change the time and date to refine my search parameters

  Background:
    Given I have the app loaded and I am on the main map launch page

    Scenario: I will open the Time Modal, and confirm my changes save I the map updates
      When I open the time modal I will see the sticky header read now-late on todays date
      And If I adjust the slider to a new time the sticky header will change to match
      Then I will tap done and the modal will close and I can see the changes reflected in the legend

  @TimeModalClosesWhenTapOnMapTest
  Scenario: If I adjust the time of day I will see the change reflected in the sticky header and when I tap on the map the modal will close
    When I open the time modal I will see the sticky header read now-late on todays date
    And If I adjust the slider to a new time the sticky header will change to match
    Then I will tap the map and the modal will close and I can see the changes reflected in the legend


  @TimeModalClosesWithHandleDragTest
  Scenario: If I adjust the time of day I will see the change reflected in the sticky header
  then when I drag the handle down the modal will close and I can see the changes reflected in the legend
    When I open the time modal I will see the sticky header read now-late on todays date
    And If I adjust the slider to a new time the sticky header will change to match
    Then I drag the handle down and the modal will close and I can see the changes reflected in the legend

  @TimeModalResetTest
  Scenario: If I click on the reset button the time modal will reset to Now-Late on todays date
    When I open the time modal I will see the sticky header read now-late on todays date
    And If I adjust the slider to a new time the sticky header will change to match
    Then If I click on the reset button it will reset to Now-Late on todays date

  @TimeModalDateChangeTest
  Scenario: If I click on a future date the time modal will change the date and reflect in the sticky header
    When I open the time modal I will see the sticky header read now-late on todays date
    And If I adjust the date it will be reflected in the sticky header to match
    Then I can confirm that the map updates based on the new date selected


