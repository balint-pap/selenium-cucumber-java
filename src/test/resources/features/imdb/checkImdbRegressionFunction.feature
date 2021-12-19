@imDB
Feature: Imdb necessary check in a Regression test suite
  As a non logged in user I should be able to visit footer links on Imdb.

  #Todo: // Get variables inside a datatable, instead of hardcoded.
  Scenario: Footer links is present
    Given I navigate to "https://www.imdb.com/"
    When I click on element having css "ul[role="presentation"] > li:first-child a"
    And I switch to new window
    And I wait 3 seconds for element having id "facebook" to display
    Then I should see page title as "IMDb - Home | Facebook"

    When I close new window
    And I switch to previous window
    And I click on element having css "ul[role="presentation"] > li:nth-child(2) a"
    And I switch to new window
    Then I wait 3 seconds for element having css "img[alt=Instagram]" to display
    Then I should see page title as "IMDb (@imdb) • Instagram photos and videos"

    When I close new window
    Then I switch to previous window



