Feature: to test the delete method

  Background: 
    Given url 'http://localhost:9191'

  Scenario: 
    Given path '/normal/webapi/remove/2'
    When method delete
    Then status 200
    And print response
