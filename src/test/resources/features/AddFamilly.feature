@AddFamily
Feature: Add Family Members
  As a user
  I want to add my family
  So i can get family data

  Scenario: GET detail Family members
    Given I set url
    When I request get detail family
    Then I will get message 400
