Feature: Service client POST
  AS QA Automation
  I want to login successful
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: check method POST
    * def requestCreate = {"email": "#(email)", "password": "#(password)"}
    * def responsePost = {"token": 'QpwL5tke4Pnpja7X4'}

    Given path 'login'
    And request requestCreate
    When method get
    Then status 200


  Scenario: check method POST
    * def requestCreate = {"email": "#(email)", "password": "#(password)"}
    * def responsePost = {"token": 'user not found'}

    Given path 'login'
    And request requestCreate
    When method post
    Then status 400

  Scenario Outline: check method POST
    * def requestCreate = {"email": "#(email)", "password": "#(password)"}
    * def responsePost = {"token": 'user not found'}

    Given path 'login'
    And request requestCreate
    And params {"email": <email>, "password": <password>}
    When method post
    Then status 400

    Examples:
      | email      | password |
      | ""         | ""       |
      | 1234       | -+#      |
      | 1234dssdj@ | @123     |

