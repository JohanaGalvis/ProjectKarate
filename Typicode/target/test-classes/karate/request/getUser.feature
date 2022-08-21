Feature: Service GET
  AS QA Automation
  I want to consult an user
  to check your registration in the system

  Background: consume service
    * url url

  Scenario: consult an user

    * def responseGet = read ('classpath:karate/request/responseGet.json')

    Given path 'users','1'
    When method get
    Then status 200
    And match response == responseGet
    And assert response.name == "Leanne Graham"
    And assert response.username == "Bret"
    And assert response.address.suite == "Apt. 556"
    And assert response.company.name ==  "Romaguera-Crona"
