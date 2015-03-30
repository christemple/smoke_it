Feature: As a sweeper I want to know if the homepage is working

  Scenario: Go to the homepage
    When I go to 'http://www.notonthehighstreet.com'
    Then I should see the homepage

  Scenario: Go to the homepage
    When I go to 'http://www.notonthehighstreet.com'
    And search for 'cats'
    Then I should see the search results page for 'cats'



