Feature: Add to Cart Functionality

  Scenario Outline: Adding items to the shopping cart and verifying updates
    Given The user is on the Amazon homepage
    And The user searches for "<item>" in the search bar
    When The user selects the first item from the search results
    And The user clicks on the "Add to Cart" button
    Then The item should be successfully added to the cart
    And The user should see a confirmation message saying "<message>"
    When The user updates the quantity to "<quantity>" in the cart
    Then The cart should reflect the updated quantity
    And The subtotal should update accordingly

    Examples:
      | item   | message       | quantity |
      | TV     | Added to Cart | 1        |
      | Laptop | Added to Cart | 1        |
      | Wipes  | Added to Cart | 3        |
