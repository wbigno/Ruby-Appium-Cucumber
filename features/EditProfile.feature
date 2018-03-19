
Feature: As a user I can update my user Profile from within the app

  Background:
    Given I am on the Maplist profile page

  Scenario: I can edit my user profile, and click Save only if I made changes
    When I click on the three dots on the Maplist profile page, I will be taken to my user profile page
    Then I can edit my Email, Display Name, and Handle
    Then If I do not make any changes the Save button is not clickable

  Scenario: I can edit my user profile, by selecting the input I want to change
    When I click on the three dots on the Maplist profile page, I will be taken to my user profile page
    Then I can edit my Email, Display Name, and Handle
    Then I will remove the text from the email, display name and handle fields
    Then I click on the email address, and enter the new address
    Then I can click on my display name, and enter the new display name
    Then I can click on my handle, and enter the new handle
    And I can click on save
    Then I click on the three dots on the Maplist profile page, I will be taken to my user profile page
    Then I will restore the original values of my profile before ending the test
    Then I can click on save

  Scenario: I can view my user profile, and click the back arrow to navigate back to the Maplist profile page
    When I click on the three dots on the Maplist profile page, I will be taken to my user profile page
    Then I can click the back arrow, and be taken back to the Maplist profile page

  Scenario: I can edit my user profile, but I can not use an email or handle that is already used
    When I click on the three dots on the Maplist profile page, I will be taken to my user profile page
    Then I can edit my Email, Display Name, and Handle
    Then I will enter an email address that is already in use
    And I can click on save
    Then check for the Banner stating email already in use
    Then I will enter a Handle that is already in use
    And I can click on save
    Then check for the Banner stating handle already in use
    Then I can click the back arrow, and be taken back to the Maplist profile page

  Scenario: My user profile has required and option fields, and I will check to make sure those are listed correctly
    When I click on the three dots on the Maplist profile page, I will be taken to my user profile page
    Then I can edit my Email, Display Name, and Handle
    Then I will remove the text from the email, display name and handle fields
    Then I will check to see if the fields have the correct input messages listed