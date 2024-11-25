Feature: BBC Navigation Functionality

  Scenario: Subscribe to the World of Business Newsletter
    Given The user navigates to the "https://www.bbc.com/" webpage
    When The user clicks on the "Business" tab in the navigation bar
    Then The user should see the "World of Business" section
    When The user fills the subscription form with valid information: "Email", "First Name", and "Country"
    And The user clicks on the "Subscribe Now" button
    Then The user should see a success message
