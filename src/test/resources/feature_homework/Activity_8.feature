Feature: Google Translate Functionality

  Scenario Outline: Translate text using Google Translate
    Given The user navigates to the Google Translate homepage
    When The user types "<text>" into the source language field
    And The user chooses "<source>" as the source language
    And The user chooses "<target>" as the target language
    Then The translated text should appear in "<target>"

    Examples:
      | text                                   | source  | target  |
      | Hello, how are you?                    | English | Spanish |
      | I need a Java book                     | English | Turkish |
      | I have a plan to visit my parents soon | English | Dari    |
