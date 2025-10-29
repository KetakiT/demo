Feature: GUI Automation Demonstration - Task 2

  Background:
    * configure driver = { type: 'chrome' }

@task2_gui
  Scenario: Calculate motor vehicle stamp duty on Revenue NSW website
    Given driver 'https://www.service.nsw.gov.au/transaction/check-motor-vehicle-stamp-duty'
    When submit().click("//a[@aria-label='Check online. External website']")
    Then match driver.url == 'https://www.apps09.revenue.nsw.gov.au/erevenue/calculators/motorsimple.php'

    Given driver 'https://www.apps09.revenue.nsw.gov.au/erevenue/calculators/motorsimple.php'
    And submit().click("//label[@for='passenger_Y']")
    And input('input[name=purchasePrice]', '30000')
    When click("//button[@type='submit']")
    Then dialog(false)
    And print driver.dialogText
