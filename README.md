# PetStoreAPITest
Test Automation Case Study-2 (API)
Task-1  
● Set path pet/findByStatus 
● Use query-string parameters to set the rest of the url path 
● Get pets for the given statuses below (Scenario Outline scheme should be used)    
  ○ Available
  ○ Pending
● Verify the below requested in the response: 
○ Status code should be 200 
○ Content-type should be application/json
○ status should be equal to the posted status
○ Each item in response should have an id and not null
Task-2
● Develop a helper JavaScript/Java function in a helper directory to create email
Task-3
● Set the Content-type=application/json
● Set path user
● Create a user with the following JSON model
○ Each field in the JSON model should be randomly generated for each call
○ The method which is created with Task-2 SHOULD be used to set email
○ Helper methods like email generation can be developed and used for the
other attributes in the JSON model
{
"id": 0,
"username": "string",
"firstName": "string",
"lastName": "string",
"email": "string",
"password": "string",
"phone": "string",
"userStatus": 0
}
● Verify the below requested in the response:
○ Status code should be 200
○ message should be equal to the posted id
Task-4
● Create a scenario by copying Task-3
● Modify the scenario to take username and lastname as parameter
● Rest of the JSON field can be generated inside the scenario randomly
● Call this scenario in other scenario by giving your name and last name as parameter
