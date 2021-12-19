@imDB
Feature: Imdb necessary check in a Regression test suite
  As a non logged in user I should be able to visit footer links on Imdb.

  #Todo: // Get variables inside a datatable, instead of hardcoded.
  Scenario: Footer links is present
    Given I navigate to "https://www.imdb.com/"
    Then I click on element having css "ul[role="presentation"] > li:first-child a"
    Then I switch to new window
    Then I wait 3 seconds for element having id "facebook" to display
    Then I should see page title as "IMDb - Home | Facebook"
    Then I close new window
    Then I switch to previous window
    Then I click on element having css "ul[role="presentation"] > li:nth-child(2) a"
    Then I switch to new window
    Then I wait 3 seconds for element having css "img[alt=Instagram]" to display
    Then I should see page title as "IMDb (@imdb) • Instagram photos and videos"
    Then I close new window
    Then I switch to previous window



