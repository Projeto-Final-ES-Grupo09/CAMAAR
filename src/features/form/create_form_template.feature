Feature: Creation of form templates
    As an administrator
    I want to create a form template
    So that I can generate evaluation forms to assess the performance of classes

Background:
    Given I am logged in as an administrator
    And I am on the template creation page

Scenario: Admin creates a form template with questions
    Given I am on the template creation page
    When I click on "Criar Template"
    And I enter a template name
    And I add questions to the template
    Then the template should be created
    And I should see a confirmation message "Template criado com sucesso."

Scenario: Admin tries to create a form template without adding questions
    Given I am on the template creation page
    When I click on "Criar Template"
    And I enter a template name
    And I click on "Criar Template"
    Then I should see an error message "Você deve adicionar alguma questão ao template antes de criá-lo."
    And the template should not be created
