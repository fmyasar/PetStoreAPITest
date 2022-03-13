@wip
Feature: pet store api tests

  Background:
    * def baseUrl = 'https://petstore.swagger.io/v2'
  @Task1
  Scenario Outline: Task-1 Set path and parameters <status>
    Given url baseUrl
    And path "pet/findByStatus"
    And param status = '<status>'
    When method get
    Then status 200
    And match header Content-Type == 'application/json'
    Then match each response[*].status == '<status>'
    Then match each response[*].id == '#present'
    Then match each response[*].id == '#notnull'

    Examples:
      |status|
      |available|
      |pending|

  @Task3
  Scenario:Task-3 Create a user with the following JSON model
    * def UG = Java.type('utilities.UserGenerator')
    * def newEmail = UG.createEmail()
    * def newId = UG.createId()
    * def nemUsername = UG.createUserName()
    * def newFirstName = UG.createFirstName()
    * def newLastName = UG.createLastName()
    * def newPassword = UG.createPassword()
    * def newPhone = UG.createPhone()
    * def newUserStatus = UG.createUserStatus()

    Given url baseUrl
    And path "user"
    And header api_key = "special-key"
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'
    And request {id:"#(newId)",username:"#(nemUsername)",firstName:"#(newFirstName)",lastName:"#(newLastName)",email:"#(newEmail)",password:"#(newPassword)",phone:"#(newPhone)",userStatus:"#(newUserStatus)"}
    When method Post
    Then status 200
    And match response.message == (""+newId)

  @Task4
  Scenario: Task-4 caller feature usage
    Given url baseUrl
    And path 'user'
    And header api_key = "special-key"
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'
    And def getFeature = call read('classpath:features/Task4.feature'){newFirstName:"Fatih",newLastName:"Yasar"}
