Feature: As a user I can change between a light map or a dark map so that I can have a cool and funcational map reagrdless of my preference and or enviroment

  Background:
    Given I have the app loaded and I am on the main map launch page

  Scenario: I can change between a dark or a light map mode using the setting icon
    When My app launches I will confirm which map mode it is in, and set it up for dark mode to execute test
    Then I can click on the Light map button to change the mode
    And The setting window will close and the map will be in Light map mode
    Then I can click on the setting icon to change the mode back to Dark map
    And I just click on the Dark map button to change the mode
    Then The setting window will close and the map will be in Dark map mode