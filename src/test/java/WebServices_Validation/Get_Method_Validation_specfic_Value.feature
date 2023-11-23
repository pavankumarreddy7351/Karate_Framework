Feature: test the validation

  Scenario: 
    Given url 'http://localhost:9191/normal/webapi/all'
    When method get
    Then status 200
    And print response
    And match response contains deep {"jobTitle":"Software Engg"}
    And match response contains deep {"project":[{"projectName":"Movie App"}]}
    And match header Content-Type == 'application/json'
    And match header Connection == 'keep-alive'
