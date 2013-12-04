Feature: Sending email
  As a busy Zurbling
  Who needs to add Face Crumpin Zurbs
  I need to be sent an email when I create one!

  Scenario: Adding a Zurb
    Given I am on the homepage
    When I add a Zurb
    Then an email should be sent to "blang@blong.zorg"
    And the email should contain "Hail Blang"