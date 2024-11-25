Feature: Weather Search Functionality

  Scenario Outline: Check the weather for different cities
    Given The user is on the Google homepage
    When The user types "Weather in" "<city>" into the search bar
    And The user clicks the search button
    Then The user should see the current weather details for "<city>"

    Examples:
      | city          |
      | Richmond Hill |
      | Pickering     |
      | Toronto       |
      | Markham       |
