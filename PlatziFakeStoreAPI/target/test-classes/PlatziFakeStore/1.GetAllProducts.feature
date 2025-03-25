Feature: Test the API to get all products

Background: Define url
    Given url 'https://api.escuelajs.co/api/v1/'
   
    Scenario: Get all products
        Given path 'products'
        When method GET
        Then status 200
        And match response[0].id === "#integer"
        And match response[0].title === "#string"
        And match response[0].slug === "#string"
        And match response[0].price === "#integer"
        And match response[0].description === "#string"
    Scenario: Get the first 10 products
        Given params {offset: 0, limit: 10}
        Given path 'products'
        When method GET
        Then status 200
        And match response[*] === '#[10]'