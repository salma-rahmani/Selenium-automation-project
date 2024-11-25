Feature: ChatGPT Text Generate Functionality

  Scenario Outline: Generate a response using ChatGPT
    Given The user is on the ChatGPT website or App
    When The user enters "<text>" in the chat input field
    And The user clicks on the "Send" button
    Then The user should see a response generated by ChatGPT based on "<text>"

    Examples:
      | text                            |
      | Give me info about NY           |
      | How does AI work?               |
      | Write a short story about space |
