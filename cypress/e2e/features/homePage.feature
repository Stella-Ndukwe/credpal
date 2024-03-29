@home
Feature: Home page
    Feature Home page serves as landing page for users 

  Background: 
    Given User is on "" page

  Scenario: To Vaidate the home page
    Then I shoud see "One App, all your Financial Needs"
    And I shoud see "Download App"
    And I shoud see "Affiliates"
    And I shoud see "Business"
    Then I shoud see "What We Do"
    Then I shoud see "Products"
    Then I shoud see "Payments"

  Scenario: To Vaidate Learn more buttons on the home page
    When I click on "Learn More" button
    Then I shoud see "Scan to download"
