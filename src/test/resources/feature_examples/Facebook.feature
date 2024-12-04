Feature: Facebook Login

  Scenario Outline: User login page with invalid credentials
    Given The user is in the Facebook login page
    When The user enters the username "<username>" and "<password>"
    Then The user clicks the login button
    Then User should see "<message>"

    Examples:
      | username         | password         | message |
      | invalid_username | invalid_password | Incorrect username|
      | invalid_username | invalid_password | Incorrect password|
