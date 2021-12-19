@imDB
Feature: Imdb search assertions
  As a non logged in user I should be able to do search on Imdb.

  #Todo: Abstract logic inside stepdefinition class to hide "technical details, such as selectors"
  Scenario: Tony Stark is present in the Cast list at the Spiderman Homecoming movie
    Given I navigate to "https://www.imdb.com/"
    When I enter "Spiderman Homecoming" into input field having class "imdb-header-search__input"
    And I click on element having css ".react-autosuggest__suggestion--first>a:nth-child(1)"
    And I wait 3 seconds for element having css "div[data-testid="hero-media__poster"]" to display
    Then element having xpath "(//span[@data-testid='cast-item-characters-with-as'])[3]" should have partial text as "Tony Stark"


  Scenario: Search who born today
    Given I navigate to "https://www.imdb.com/"
    When I wait 3 seconds for element having css "div.born-today-name" to display
    And I save people names who born today
    Given I navigate to "https://www.wikipedia.org/"
    When I enter saved text into input field having id "searchInput"
    And I click on element having class "pure-button-primary-progressive"
    And I wait for 5 sec
    Then I close browser