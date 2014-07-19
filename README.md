#BDD Testing Using Cucumber and Ruby

An demo script using cucumber, ruby and selenium web-driver to create repeating invoice

## Acceptance Test Case

```ruby
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
```

## Pre-Requisites
1. Install ruby from https://www.ruby-lang.org/en/installation/#rubyinstaller website.
2. Install selenium-webdriver using command 'gem install selenium-webdriver'.
3. Install cucumber using command 'gem install cucumber'.
4. Download chrome driver from http://chromedriver.storage.googleapis.com/index.html and IE driver from http://selenium-release.storage.googleapis.com/index.html. Extract these executables and put them in executable path.

   Example: Extract the driver to 'C:\Temp\SeleniumDriver\' and put this path to the environment variable.


## Test Setup
1. Clone or Download the repository
2. If downloaded, extract the repository to local directory

   Example: Extract the repository to C:\Users\morer\Documents\GitHub\ruby_bdd'

## Executing the Test
- Navigate to the test folder ruby_bdd from command prompt/Terminal
  
  Example: if the test is downloaded/cloned to 'Documents\GitHub\ruby_bdd' then open command prompt and navigate to 'Documents\GitHub\ruby_bdd'
- Execute the command 'cucumber'
  
  Example: On command prompt Documents\GitHub\ruby_bdd>cucumber
- Watch the automation test run
