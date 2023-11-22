Feature: create a random number

  Background: 
    And def getRandomValue = function(){return Math.floor((Math.random()*(100)))}
    And def id = getRandomValue()
    Given url 'http://localhost:9191'

  Scenario: update the emp deatils
    Given path '/normal/webapi/add'
    Then request {"jobId":'#(id)',"jobTitle":"Software Test Engg","jobDescription":"To Test andriod application","experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}
    And headers { Content-Type :  'application/json', Accept : 'application/json'}
    When method post
    Then status 201
    And print response
