Feature: Navigate to TekSchool website

  Scenario: Search for TekSchool from google
    Given The user is on the home page of google
    When The user search for "TekSchool" keyword
    Then The user Enter to the search button
    Then The user should see the reault
    Then The user should click on first link
    Then The user should navigate to the TekSchool website