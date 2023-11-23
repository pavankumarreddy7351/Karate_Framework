Feature: test the validation

  Scenario: 
    Given url 'http://localhost:9191/normal/webapi/all'
    When method get
    Then status 200
    And print response
    And match response ==
      """
       [
       {
         "jobId": 1,
         "jobTitle": "Software Engg",
         "jobDescription": "To develop andriod application",
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
      ]
      """
