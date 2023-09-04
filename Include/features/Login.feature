Feature: Test Login functionality

  @smoke
  Scenario Outline: Check login is successful with valid credentials
    Given user is on login page
    When user enters <username> and <password>
    And click on login button
    Then user is navigated to the home page

    @valid
    Examples: 
      | username | password |
      | Admin    | admin123 |
      | Admin123 | abc456   |

		@invalid
    Examples: 
      | username | password |
      | Admin123 | abc456   |
