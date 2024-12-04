Feature: Instagram Login Functionality

  Scenario Outline: Login with invalid credentials
    Given The user navigates to "https://www.google.com"
    Then The user searches for "Instagram" in the search field
    And The user clicks on the search button and selects the Instagram link from the results section
    When The user enters "<username>" and "<password>" on the Instagram login page
    And The user clicks on the login button
    Then The user should see the error message "<message>"

    Examples:
      | username         | password         | message                                                         |
      | invalid_username | invalid_password | Your password was incorrect. Please double-check your password. |
      | invalid_username | invalid_password | Your password was incorrect. Please double-check your password. |
