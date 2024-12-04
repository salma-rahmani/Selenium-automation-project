Feature: LinkedIn Profile Update

  Scenario Outline: Update the "Headline" section in the LinkedIn profile
    Given The user is logged into their LinkedIn account
    And The user navigates to their profile page
    When The user clicks on the "Edit" button next to cover photo section
    And The user updates the headline in the "Headline" section to "<new_information>"
    And The user clicks on the "Save" button
    Then The user should see the updated "Headline" section displaying "<new_information>"

    Examples:
      | new_information                                    |
      | Experienced QA Engineer with a passion for testing |
      | Seeking new opportunities in data analytics        |
