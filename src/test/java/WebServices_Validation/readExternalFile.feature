Feature: 

  Scenario: 
    Given url 'http://localhost:9191/normal/webapi/all'
    When method get
    Then status 200
    And print response
    * def expectedResponse = read("External.json")
    And print expectedResponse
    And match response == expectedResponse
