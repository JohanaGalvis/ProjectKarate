Feature: Service POST
  AS QA Automation
  I want to create a post
  to check your registration in the system

  Background: consume service
    * url url

  Scenario: create a post

    * def requestBody = read ('classpath:karate/request/requestBodyCreatePost.json')
    * def responsePost = read ('classpath:karate/request/reponsePost.json')

    Given path 'posts'
    And request requestBody
    When method post
    Then status 201
    And match response == responsePost
    And assert response.title == requestBody.title
    And assert response.body == requestBody.body
    And assert response.userId == requestBody.userId

