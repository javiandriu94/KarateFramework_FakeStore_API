Feature: Test the API to

Background: Define url
    * def userId = callonce read ('classpath:PlatziFakeStore/3.CreateNewUser.feature')
    Given url 'https://api.escuelajs.co/api/v1/'
    Given path `users/${userId}`

Scenario: Get a single user
    When method GET
    Then status 200
    And match response.id === userId
    