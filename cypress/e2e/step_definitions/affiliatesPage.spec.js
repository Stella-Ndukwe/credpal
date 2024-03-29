import { Given, When } from "@badeball/cypress-cucumber-preprocessor";
import { Pages } from "@pages/pom";
const allPage = new Pages();
Given("User is on {string} page", (page) => {
  allPage.visitPage(page);
});

When("I type {string} on {string}", (el, text) => {
  allPage.inputField(text, el);
});

When("I ensure {string} is checked", (s) => {
  allPage.elCheck(s);
});

When("I click on Credit checkbox", () => {
  allPage.creditCheckBox();
});
