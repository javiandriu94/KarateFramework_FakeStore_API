Feature: Test the API to create a new product

Background: Define url
    Given url 'https://api.escuelajs.co/api/v1/'
    Given path 'products'
    And headers { 'Content-Type': 'application/json' }

    Scenario: Create a new product with categoryId equal to one
        And request { "title": "Nike Shoes", "price": 100, "description": "This is a new product", "categoryId": 1,"images": ["https://placehold.co/600x400"] }
        When method POST
        Then status 201
        And match response.title === "Nike Shoes"
        And match response.price === 100
        And match response.description === "This is a new product"
        And match response.category.id === request.categoryId
        And match response.category.name === "Clothes"
    Scenario: Create a new product with categoryId equal to two
        And request { "title": "Dell Computer", "price": 180, "description": "This is a new product", "categoryId": 2, "images": ["https://placehold.co/600x400"] }
        When method POST
        Then status 201
        And match response.title === "Dell Computer"
        And match response.price === 180
        And match response.description === "This is a new product"
        And match response.category.id === request.categoryId
        And match response.category.name === "Electronics"

    Scenario: Create a new product with categoryId equal to three
        And request { "title": "Victoria Secret Splash", "price": 67, "description": "This is a new product", "categoryId": 3, "images": ["https://placehold.co/600x400"] }
        When method POST
        Then status 201
        And match response.title === "Victoria Secret Splash"
        And match response.price === 67
        And match response.description === "This is a new product"
        And match response.category.id === request.categoryId
        And match response.category.name === "Furniture"

    Scenario: Create a new product with categoryId equal to four
        And request { "title": "Adidas Black Shoes", "price": 120, "description": "This is a new product", "categoryId": 4, "images": ["https://placehold.co/600x400"] }
        When method POST
        Then status 201
        And match response.title === "Adidas Black Shoes"
        And match response.price === 120
        And match response.description === "This is a new product"
        And match response.category.id === request.categoryId
        And match response.category.name === "Shoes"

    Scenario: Create a new product with categoryId equal to five
        And request { "title": "Miscellaneous wallpaper", "price": 32, "description": "This is a new product", "categoryId": 5, "images": ["https://placehold.co/600x400"] }
        When method POST
        Then status 201
        And match response.title === "Miscellaneous wallpaper"
        And match response.price === 32
        And match response.description === "This is a new product"
        And match response.category.id === request.categoryId
        And match response.category.name === "Miscellaneous"