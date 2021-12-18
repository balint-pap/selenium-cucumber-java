Feature: Imdb search assertions
  As a non logged in user I should be able to do search on Imdb.

  Scenario: Tony Stark is present in the Cast list at the Spiderman Homecoming movie
    Given I navigate to "https://www.imdb.com/"
    Then I enter "Spiderman Homecoming" into input field having class "imdb-header-search__input"
    And I click on element having css ".react-autosuggest__suggestion--first > a:nth-child(1)"
    And I wait for 5 sec
    Then element having css ".title-cast__grid>div.ipc-sub-grid>div:nth-child(3)>div>div:nth-child(2)>ul>li>a>span:nth-child(2)" should have partial text as "Tony Stark"
    Then I close browser

  Scenario: Born today
    Given I navigate to "https://www.imdb.com/"
    Then I save people names who born today
    Given I navigate to "https://www.wikipedia.org/"
    When I enter "Bradd Pitt" into input field having id "searchInput"
    And I click on element having class "pure-button-primary-progressive"
    When I wait for 5 sec
    Then I close browser