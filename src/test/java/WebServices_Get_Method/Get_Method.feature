Feature: to test the karate API's

  Scenario: to get the emp deatils
    Given url 'http://localhost:9191/normal/webapi/all'
    When method get  # send the request
    Then status 200 #response the code
    And print response

  #negtive Sceario
  Scenario: to get the emp deatils
    Given url 'http://localhost:9191/normal/webapi/all'
    When method get  # send the request
    Then status 202 #response the code
    And print response
