Feature: API Automation Demonstration - Task 3

@task3_api
  Scenario: Fetch and validate author details from Open Library API
    Given url 'https://openlibrary.org/authors/OL1A.json'
    When method get
    Then status 200
    And match response.personal_name == "Sachi Rautroy"
    And match response.alternate_names contains ["Yugashrashta Sachi Routray"]
