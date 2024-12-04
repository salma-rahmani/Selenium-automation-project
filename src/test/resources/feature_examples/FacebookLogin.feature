Feature: Facebook Login Functionality

  Scenario: Login using valid credentials
    Given The user is on login page
    When User eneters valid username and password
    Then User should be navigated to dashboard


    Scenario: Login using invalid credentials
      Given The user is on login page
      When User enters invalid username and password
      Then user should see a message





