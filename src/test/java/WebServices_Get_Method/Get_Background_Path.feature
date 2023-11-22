Feature: to test the karate API's

  Background: 
    Given url 'http://localhost:9191'
      And print '*****************Background*******************'
    

  Scenario: to get the emp deatils
    And path '/normal/webapi/all'
    When method get  # send the request
    Then status 200 #response the code
    And print response
    And print '*****************Postive*******************'

  #negtive Sceario
  Scenario: to get the emp deatils
    And path '/normal/webapi/all'
    When method get  # send the request
    Then status 202 #response the code
    And print response
     And print '*****************Negtive*******************'
    
