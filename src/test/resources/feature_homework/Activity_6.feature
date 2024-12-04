Feature: Checkout Functionality

  Scenario Outline: Purchasing items with different payment and address details
    Given The user is on the eBay homepage "https://www.ebay.ca/"
    And The user searches for "<item>" and adds it to the cart
    When The user proceeds to checkout
    And The user enters "<address>" for the shipping address
    And The user selects "<payment>" as the payment option
    Then The user should see "<status>" for the transaction

    Examples:
      | item   | address         | payment           | status                         |
      | phone  | Valid address   | Valid credit card | Order placed successfully      |
      | Laptop | Invalid address | Valid PayPal      | Please provide a valid address |
      | Watch  | Valid address   | Invalid PayPal    | Payment method declined        |
