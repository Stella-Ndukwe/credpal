export class Pages {
  visitPage(page) {
    cy.visit(page);
  }
  elClick(el) {
    cy.contains(el).click();
  }
  elCheck(el) {
    cy.contains(el).check();
  }
  elBtnClick(el) {
    cy.get("button").contains(el).first().click();
  }

  elVisible(el) {
    cy.contains(el).should("be.visible");
  }
  inputField(id, text) {
    cy.get(`#${id}`).type(text);
  }
  creditCheckBox() {
    cy.get(".gap-5 > :nth-child(1)").click();
  }
}
