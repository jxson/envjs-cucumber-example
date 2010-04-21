Feature: Events
  In order prove that capybara-envjs is a suitable driver for cucumber
  As a user
  I want to make sure all capybara events work

  Scenario: click event from a step
    Given I am on the home page
    When I evaluate page script "$('a#test-link').click();"
    Then I should see "The test link was clicked"

  Scenario: click event
    Given I am on the home page
    When I follow "Test link"
    Then I should see "The test link was clicked"

  Scenario: form submission
    Given I am on the home page
    When I fill in "Best movie ever?" with "Teen Wolf"
    And I press "Submit"
    Then I should see "You think Teen Wolf is the best movie ever? Pfff..."