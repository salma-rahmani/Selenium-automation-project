Feature: Gmail Logout Functionality

  Scenario: Logout from a Gmail account
    Given The user is logged into their gmail account
    When The user clicks on the profile picture of their account
    Then The user should see the "Sign out" link
    And The user clicks on the "Sign out" link
    Then The user should be successfully logged out