/// <reference types="cypress" />
context("rules", () => {
  beforeEach(() => {
    // Start a mock server
    cy.server();
    //fake a route and return a fixture
    cy.route("**/api/rules**", "fx:rules.json").as("listRules");
    //navigate to the list of rules
    cy.visit("rules");
  });

  it("shows a list of rule", () => {
    cy.fixture('rules.json').then((listRules:ListRule) => {
        const { rules } =  listRules; //xhr.responseBody as ListRule
    cy.get("div.rule-card-in-rules-list").should("have.length", rules.length);
  });
});
