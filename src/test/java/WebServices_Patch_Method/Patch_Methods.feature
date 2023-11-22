Feature: test the post method

  Background: 
    Given url 'http://localhost:9191'

  #JSON Formate
  Scenario: update the emp deatils
    Given path '/normal/webapi/update/details'
    And params {id:'1', jobTitle: 'cs', jobDescription:'testing the aapi'}
    And header Accept = 'application/json'
    When method patch
    Then status 200
    And print response

  #XML Formate
  Scenario: update the emp deatils
    Given path '/normal/webapi/update/details'
    Then params  {id:'201', jobTitle: 'cs', jobDescription:'aapi'}
    And header Accept = 'application/xml'
    When method patch
    Then status 200
    And print response
