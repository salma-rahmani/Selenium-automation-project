Feature: Google Search Functionality

  Scenario Outline: Search for books on Google
    Given The user is on the Google homepage
    When The user enters "<search>" in the search field
    And The user clicks on the search button
    Then The user should see the search results for "<search>"

    Examples:
      | search        |
      | Advanced Java |
      | PHP           |
