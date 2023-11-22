Feature: test the post method

  Background: 
    Given url 'http://localhost:9191'

  #JSON Formate
  Scenario: update the emp deatils
    Given path '/normal/webapi/update'
    Then request
      """
        {
      "jobId": 2090,
      "jobTitle": "Software",
      "jobDescription": "To Test andriod application",
      "experience": [
        "Google",
        "Apple",
        "Mobile Iron"
      ],
      "project": [
        {
          "projectName": "Movie App",
          "technology": [
            "Kotlin",
            "SQL Lite",
            "Gradle"
          ]
        }
      ]
      }
      """
    And headers { Content-Type :  'application/json', Accept : 'application/json'}
    When method put
    Then status 200
    And print response

  #XML Formate
  Scenario: update the emp deatils
    Given path '/normal/webapi/update'
    Then request
      """
       <item>
      <jobId>7701</jobId>
      <jobTitle>Mechcicil</jobTitle>
      <jobDescription>To develop andriod application</jobDescription>
      <experience>
        <experience>Google</experience>
        <experience>Apple</experience>
        <experience>Mobile Iron</experience>
      </experience>
      <project>
        <project>
          <projectName>Songs App</projectName>
          <technology>
            <technology>CV Raman</technology>
            <technology>SQL Lite</technology>
            <technology>Gradle</technology>
          </technology>
        </project>
      </project>
      </item>

      """
    And headers { Content-Type :  'application/xml', Accept : 'application/xml'}
    When method put
    Then status 200
    And print response
