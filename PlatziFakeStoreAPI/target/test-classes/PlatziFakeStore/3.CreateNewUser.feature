Feature: Test the API to create a new user

Background: Define url
    Given url 'https://api.escuelajs.co/api/v1/'
    Given path 'users/'
    And headers { 'Content-Type': 'application/json' }

    Scenario: Create a new user
        And request {"name": "Nicolas","email": "nico@gmail.com","password": "1234","avatar": "https://picsum.photos/800"}
        When method POST
        Then status 201
        And match response.name === request.name
        And match response.email === request.email
        And match response.password === request.password
        And match response.role === "customer"
        * def userId = response.id

        Scenario: Get a single user
        Given param userId
        When method GET
        Then status 200
        And match response.id === userId
        And match response.name === "Nicolas"
