#BDD Test using Cucumber and Ruby

An demo script using cucumber, ruby and selenium web-driver to create repeating invoice

## Acceptance Test Case

```ruby
Feature: Generate monthly Repeating Invoice

Scenario: To generate a repeating Invoice for a company
	Given I am on Xero login Page
	And I have the following user data:
		| userID				  | password | organization | inventoryItem |
		| rupesh.more@hotmail.com | XeroDem0 | ABC Inc		| PostIT 		|

	When I enter valid <userID> and <password> credentials
	Then I see the Xero Dashboard Page
		And I see the <organization> name listed
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
Edit the 'demo.feature' file to change the values in the table

## Installation
1. Install ruby from https://www.ruby-lang.org/en/installation/#rubyinstaller website.
   - For windows, download from http://rubyinstaller.org/. Recommended ruby 1.9.3p545
   - Install ruby DevKit
2. Install selenium-webdriver using command ```gem install selenium-webdriver```
3. Install cucumber using command ```gem install cucumber```
4. Install rspec using command ```gem install rspec-expectations```
5. Download chrome driver from http://chromedriver.storage.googleapis.com/index.html and IE driver from http://selenium-release.storage.googleapis.com/index.html. Extract these executables and put them in executable path.

   Example: Extract the driver to 'C:\Temp\SeleniumDriver\' and put this path to the environment variable.
6. Download ansicon v1.66 from http://adoxa.altervista.org/ansicon/ to get coloured output in command prompt.

	For ansicon, add x86 (if your OS is 32-bit) or x64 (if 64-bit) to your PATH, or copy the relevant files to a directory already in the PATH.
	
	Alternatively, use option -i (or -I, if permitted) to install it permanently.  
	Example: if ansicon is extracted to path 'C:\Temp\ansi166' 
	- For 32-bit OS - In command Prompt ```C:\Temp\ansi166\x86 > ansicon -i```
	- For 64-bit OS - In command Prompt ```C:\Temp\ansi166\x64 > ansicon -i```

## Basic Usage
1. Clone or Download the repository
   - If downloaded, extract the repository to local directory
     * Example: Extract the repository to 'Documents\GitHub\ruby_bdd'

2. Navigate to the test ruby_bdd from command prompt
   * Example: if the test is downloaded/cloned to 'Documents\GitHub\ruby_bdd' then open command prompt and navigate to 'Documents\GitHub\ruby_bdd'
3. Execute the command ```cucumber```
  - For advance reporting, execute the command ```cucumber -f pretty -f html -o report.html```

     This will output the result to STDOUT and also it will create a report.html file under ruby_bdd folder

## Advance Usage
Note: The default browser set to execute is chrome, change the following snippet in demo.rb file
```ruby
	driver = Selenium::WebDriver.for :chrome
	to 
	driver = Selenium::WebDriver.for :ie
	or
	driver = Selenium::WebDriver.for :firefox
```
