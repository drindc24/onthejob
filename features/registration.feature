Feature: Sample

  Scenario Outline: Creating a new account
    Given I am not authenticated


    Examples:
    | email           | password   |
    | testing@man.net | secretpass |
    | foo@bar.com     | fr33z3     |

  Scenario: Willing to edit my account
    Given I am a new, authenticated user
    And I go to home page
#    When I go to the login page
#    And I fill in the following:
# And more view checking stuff