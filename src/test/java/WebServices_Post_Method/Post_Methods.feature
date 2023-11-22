Feature: test the post method

  Background: 
    Given url 'http://localhost:9191'

  #JSON Formate
  Scenario: update the emp deatils
    Given path '/normal/webapi/add'
    Then request {"jobId":201,"jobTitle":"Software Test Engg","jobDescription":"To Test andriod application","experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}
    And headers { Content-Type :  'application/json', Accept : 'application/json'}
    When method post
    Then status 201
    And print response

  #XML Formate
  Scenario: update the emp deatils
    Given path '/normal/webapi/add'
    Then request  <item><jobId>77</jobId><jobTitle>Mech</jobTitle><jobDescription>To develop andriod application</jobDescription><experience><experience>Google</experience><experience>Apple</experience><experience>Mobile Iron</experience></experience><project><project><projectName>Songs App</projectName><technology><technology>CV Raman</technology><technology>SQL Lite</technology><technology>Gradle</technology></technology></project></project></item>
    And headers { Content-Type :  'application/xml', Accept : 'application/xml'}
    When method post
    Then status 201
    And print response
