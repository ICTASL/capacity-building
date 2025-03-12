---
layout: resource
title: "2.2.3. Testing: Write unit tests for API endpoints"
description: "Testing: Write unit tests for API endpoints for Back-end Development Beginner Level"
permalink: /professionals\full_stack_development\digital-innovators\/2-2-3-testing-unit-tests-api-endpoints/
lang: en
---

* TOC
{:toc}



### 2.2.3. Testing: Write Unit Tests for API Endpoints:

#### 2.2.3.1. Unit Tests for API Endpoints

Just like in front-end development, **testing** is a fundamental practice in back-end development. **Unit tests** are the most basic and foundational type of test. They focus on verifying the correctness of individual, isolated units of code – in our case, individual **API endpoints** (or the functions that handle the logic within those endpoints).

*   **What are Unit Tests?**  **Unit tests** are automated tests that:

    *   **Test Individual Units in Isolation:** Unit tests focus on testing small, isolated pieces of code, such as individual functions, methods, or in our context, specific API endpoint handlers. They are designed to test the logic of one unit in isolation, *without* dependencies on other parts of the system (like databases, external APIs, or other modules) as much as possible.
    *   **Are Automated:** Unit tests are written as code and are executed automatically by a testing framework. You don't run them manually each time you make changes.
    *   **Are Fast:** Unit tests should run very quickly. Because they test small units of code in isolation and avoid external dependencies, they can be executed rapidly, allowing you to run them frequently during development.
    *   **Are Repeatable:** Unit tests should always produce the same results given the same inputs. They should be deterministic and not rely on external factors that could cause inconsistent outcomes.
    *   **Verify Specific Behaviors:** Each unit test is designed to verify a specific behavior or aspect of the unit of code being tested. For example, a unit test for an API endpoint handler might verify:
        *   That it correctly handles valid requests.
        *   That it correctly handles invalid requests (e.g., with wrong input data).
        *   That it returns the expected HTTP status code for different scenarios.
        *   That it returns the expected JSON response body for different scenarios.
        *   That it correctly processes data and performs the intended logic.
    *   **Use Test Frameworks and Assertions:** Unit tests are written using a testing framework specific to your programming language and framework (e.g., Jest or Mocha for Node.js/JavaScript, JUnit for Java, pytest for Python, etc.). Testing frameworks provide utilities for:
        *   **Running Tests:** Executing your test files and test suites.
        *   **Assertions:** Providing assertion methods (like `assertEqual`, `assertTrue`, `assertThrows`) to check if the actual output of your code matches the expected output. If an assertion fails, the test fails, indicating a bug in your code.
        *   **Test Structure and Organization:** Helping you organize your tests into logical groups and test suites.
        *   **Test Reporting:** Generating reports that summarize the test results (how many tests passed, how many failed, etc.).

*   **Why are Unit Tests Important for API Endpoints?** Unit testing is especially valuable for API endpoints for several reasons:

    *   **Verifying API Logic:** APIs are the interface through which clients interact with your back-end. Unit tests for API endpoints ensure that the core logic of your API endpoints is working correctly – that they handle requests as expected, process data correctly, and return the right responses.
    *   **Catching Bugs Early:** Unit tests help you find bugs early in the development process, *before* they become more complex and harder to track down in integration or end-to-end tests. Finding bugs early is much cheaper and faster to fix.
    *   **Regression Prevention:** When you make changes to your code (fix bugs, add new features, refactor code), unit tests act as a safety net. If you accidentally introduce a regression (break existing functionality) with your changes, the unit tests will fail, alerting you to the problem immediately.
    *   **Documentation (Executable Documentation):** Well-written unit tests can serve as a form of executable documentation. They show *how* your API endpoints are supposed to behave and what kinds of inputs they are expected to handle.
    *   **Improved Code Design and Testability:** Writing unit tests often encourages you to write code that is more modular, well-structured, and testable. Code that is easy to unit test is generally also easier to maintain and understand.

*   **Writing Unit Tests for API Endpoints (Example with Node.js and Jest/Mocha):** You'll learn to write unit tests for your API endpoints using a testing framework relevant to your chosen language and framework (e.g., Jest or Mocha for Node.js). Typical steps for writing unit tests for an API endpoint in Node.js with Express might involve:

    1.  **Choosing a Testing Framework (e.g., Jest or Mocha with `supertest`):** Select a testing framework (like Jest, which is very popular in the JavaScript/Node.js world, or Mocha, another widely used option) and a library like `supertest` for easily testing HTTP requests to your Express server.
    2.  **Setting up a Test Environment:**  Configure your project to include your testing framework and any necessary test dependencies. You'll likely need to install testing libraries using NPM.
    3.  **Writing Test Files:** Create separate test files (e.g., in a `test/` directory) for your API endpoints. Typically, you'll have a test file for each API resource or module.
    4.  **Writing Test Cases (using `describe` and `it` blocks):**  Use the testing framework's structure (e.g., `describe` blocks to group tests, `it` blocks to define individual test cases) to organize your tests logically. For each API endpoint, you'll write multiple test cases to cover different scenarios:
        *   **Successful Requests:** Tests for valid requests that are expected to succeed (e.g., creating a resource with valid data, retrieving an existing resource).
        *   **Error Cases:** Tests for invalid requests or error scenarios (e.g., creating a resource with invalid data, trying to retrieve a non-existent resource, sending requests without authentication if authentication is required).
    5.  **Making API Requests in Tests (using `supertest`):** Use `supertest` (or a similar library) to make simulated HTTP requests to your Express server *within your test code*. You can simulate `GET`, `POST`, `PUT`, `DELETE` requests to specific API endpoints and send request bodies and headers.
    6.  **Making Assertions on Responses:**  Use assertion methods provided by your testing framework (e.g., `expect` in Jest, `assert` in Mocha) to check the responses from your API endpoints. You'll assert things like:
        *   **HTTP Status Code:**  Verify that the response status code is the expected one (e.g., `expect(response.status).toBe(200)` for a successful GET request, `expect(response.status).toBe(400)` for a bad request).
        *   **Response Body (JSON Data):**  Verify that the response body (JSON data) contains the expected data and structure (e.g., `expect(response.body).toHaveProperty('id')`, `expect(response.body.name).toBe('Expected Name')`).
        *   **Headers (if necessary):** Check specific response headers if needed.
    7.  **Running Tests:** Use the testing framework's command to run your tests (e.g., `npm test` in a Node.js project with Jest configured).
    8.  **Analyzing Test Results:**  Examine the test results to see which tests passed and which failed. If tests fail, debug your API endpoint code and fix the bugs until all tests pass.

    By writing unit tests for your API endpoints, you'll gain confidence that your APIs are working correctly, catch bugs early, and build a solid foundation for more complex back-end development. Testing becomes an integral part of your development workflow, not just an optional add-on.


    ### GPT Prompts for Practice

    Here are some GPT prompts to help you practice writing unit tests for API endpoints:

    
    1. Write a unit test for a GET endpoint that retrieves a list of users. Ensure the test checks for the correct HTTP status code, the structure of the returned JSON data, and that the data matches the expected user list.

    2. Write a unit test for a POST endpoint that creates a new user. Ensure the test checks for the correct HTTP status code, the structure of the returned JSON data, and that the user is correctly added to the database with the expected attributes.

    3. Write a unit test for error handling in a PUT endpoint that updates user information. Ensure the test checks that invalid input data returns the correct HTTP status code and error message, and that valid data updates the user correctly.

    4. Write a unit test for authentication on a DELETE endpoint that requires authentication. Ensure the test checks that unauthorized requests are correctly handled with an appropriate error message and that authorized requests successfully delete the user.

    5. Write a unit test for data validation on a PATCH endpoint that partially updates user data. Ensure the test checks that invalid data is correctly rejected with appropriate error messages and that valid data updates the user as expected.

    ### Future Reading
    
- [Introduction to Unit Testing - freeCodeCamp](https://www.freecodecamp.org/news/unit-testing-tutorial/)
- [What Are Unit Tests? Beginner's Guide](https://www.toptal.com/qa/unit-testing-beginners-guide)
- [Writing Unit Tests for Express API Endpoints - DigitalOcean](https://www.digitalocean.com/community/tutorials/test-a-node-rest-api-with-jest)
- [Unit Testing Basics for APIs with Jest](https://jestjs.io/docs/getting-started)
- [Express API Testing with Mocha and Chai](https://scotch.io/tutorials/test-a-node-restful-api-with-mocha-and-chai)
- [Beginner's Guide to API Testing](https://medium.com/better-programming/api-testing-101-unit-testing-your-api-endpoints-d1ee7ceab6bc)
- [Testing REST APIs Using Postman](https://www.postman.com/api-test/)
- [REST API Unit Testing Best Practices](https://stackabuse.com/unit-testing-and-best-practices-for-rest-api-endpoints/)
- [How to Write Simple Unit Tests with Python Flask](https://flask.palletsprojects.com/en/2.2.x/testing/)
- [Unit Testing APIs in ASP.NET Core](https://docs.microsoft.com/en-us/aspnet/core/test/unit-testing?view=aspnetcore-6.0)
- [Test Your APIs with Postman](https://blog.postman.com/intro-to-testing-your-api-using-postman/)
- [Node.js API Testing with SuperTest](https://github.com/visionmedia/supertest)
- [Effective Unit Test Strategies for Backend Development](https://martinfowler.com/bliki/UnitTest.html)
