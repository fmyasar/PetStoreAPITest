Feature: Task4

  Scenario: Task-4 First Scenario
    * def UG = Java.type('utilities.UserGenerator')
    * def newEmail = UG.createEmail()
    * def newId = UG.createId()
    * def nemUsername = UG.createUserName()
#    * def newFirstName = UG.createFirstName()
#    * def newLastName = UG.createLastName()
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
