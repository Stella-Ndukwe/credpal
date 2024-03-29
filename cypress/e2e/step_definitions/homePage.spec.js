import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import { Pages } from "@pages/pom";
const home = new Pages();

Then("I shoud see {string}", (el) => {
  home.elVisible(el);
});

When("I click on {string}", (el) => {
  home.elClick(el);
});

When("I click on {string} button", (btn) => {
  cy.wait(500);
  home.elBtnClick(btn);
  cy.wait(500);
});
