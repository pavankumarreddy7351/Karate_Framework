Feature: test the all methods

  Background: 
    Given url 'http://localhost:9191'

  Scenario: add emp update emp modifiy emp patch emp and delete emp
    #Getting all  employe
    Given path '/normal/webapi/all'
    When method get
    Then status 200
    And print response
    # adding new employe
    Given path '/normal/webapi/add'
    Then request {"jobId":2,"jobTitle":"Software Test Engg","jobDescription":"To Test andriod application","experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}
    And headers { Content-Type :  'application/json', Accept : 'application/json'}
    When method post
    Then status 201
    And print response
    # updatnig new employe
    Given path '/normal/webapi/update'
    Then request {"jobId":2,"jobTitle":"Software Test ","jobDescription":"To Test andriod application","experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}
    And headers { Content-Type :  'application/json', Accept : 'application/json'}
    When method put
    Then status 200
    And print response
    # patching new employe
    Given path '/normal/webapi/update/details'
    And params {id:'1', jobTitle: 'cs', jobDescription:'testing the aapi'}
    And header Accept = 'application/json'
    When method patch
    Then status 200
    And print response
    # Deleting employe
    Given path '/normal/webapi/remove/1'
    When method delete
    Then status 200
    And print response
