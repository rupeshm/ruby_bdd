Feature: Generate monthly Repeating Invoice

Scenario: To generate a repeating Invoice for a company

	Given I am on Xero login Page
	When I enter valid user credentials
	Then I see the Xero Dashboard Page
		And I see the organisation name listed

	Given I am on Dashboard Page
	When I click on Accounts Tab
		And When I click on Sales sub menu
	Then I see the Sales Page

	Given I am on Sales Page
	When I click on Repeating link next to Invoices
	Then I see the Repeating Invoice Search Page

	Given when I am on Repeating Invoice Search Page
	When I click on New Repeating Invoice button
	Then I see New Repeating Invoice Page

	Given when I am on New Repeating Invoice Page
	When I enter all the necessary data in edit fields
		And perform actions in the invoice table
		And I click on save button
	Then I see New Repeating Invoice Generated
