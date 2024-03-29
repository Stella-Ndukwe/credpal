@affiliates
Feature: Affiliate page
    Feature Affiliate page 

  Background: 
    Given User is on "sales" page
# Bug Affiliate page points to sales

  Scenario: To Validate Affiliate page
    Then I shoud see "Affiliate Onboarding Form"
    And I shoud see "Support"

  Scenario: To Validat user filled form with valid details
    When I type "QATestFirstName" on "first_name"
    And I type "QATestLastName" on "last_name"
    And I type "ndukwe@yopmail.com" on "email"
    And I type "+2347049994004" on "phone"
    And I click on Credit checkbox
    And I click on "Submit" button
    Then I shoud see "Data submitted successfully."

  Scenario: To Validat user filled form with Existing valid details
    When I type "QATestFirstName" on "first_name"
    And I type "QATestLastName" on "last_name"
    And I type "ndukwe@yopmail.com" on "email"
    And I type "+2347049994004" on "phone"
    And I click on Credit checkbox
    And I click on "Submit" button
    Then I shoud see "The given data was invalid."

  Scenario: To Validat error message when form is filled with First name empty
    And I type "QATestLastName" on "last_name"
    And I type "ndukwe@yopmail.com" on "email"
    And I type "+2347049994004" on "phone"
    And I click on Credit checkbox
    And I click on "Submit" button
    Then I shoud see "this field is required."

  Scenario: To Validat error message when form is filled with Last name empty
    When I type "QATestFirstName" on "first_name"
    And I type "ndukwe@yopmail.com" on "email"
    And I type "+2347049994004" on "phone"
    And I click on Credit checkbox
    And I click on "Submit" button
    Then I shoud see "this field is required."

  Scenario: Validate error message when form is submitted with invalid email format
    When I type "QATestFirstName" on "first_name"
    And I type "QATestLastName" on "last_name"
    And I type "invalid@yopmail" on "email"
    And I type "+2347049994004" on "phone"
    And I click on Credit checkbox
    And I click on "Submit" button
    Then I shoud see "this field has to be a valid email address."

  Scenario: To Validate error message when form is submitted with invalid phone number format
    When I type "QATestFirstName" on "first_name"
    And I type "QATestLastName" on "last_name"
    And I type "ndukwe@yopmail.com" on "email"
    And I type "+2347049994" on "phone"
    And I click on Credit checkbox
    And I click on "Submit" button
    Then I shoud see "the field has to be a valid nigerian phone number."

  Scenario: To Validat error message when form is filled with credit or investment unchecked
    When I type "QATestFirstName" on "first_name"
    And I type "QATestLastName" on "last_name"
    And I type "ndukwe@yopmail.com" on "email"
    And I type "+2347049994443" on "phone"
    And I click on "Submit" button
    Then I shoud see "this field is required."
