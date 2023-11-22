Feature: to test the karate API's

  Background: 
    Given url 'http://localhost:9191'

  #XML formate
  Scenario: to get the emp deatils
    And path '/normal/webapi/all'
    When method get
    Then status 200
    And header Accept = 'application/xml'
    And print response

  #JSON formate
  Scenario: to get the emp deatils
    And path '/normal/webapi/all'
    When method get
    Then status 200
    And header Accept = 'application/json'
    And print response
