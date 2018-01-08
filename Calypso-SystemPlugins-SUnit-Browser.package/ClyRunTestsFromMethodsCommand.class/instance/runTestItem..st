execution
runTestItem: testItem

	| testSelector |
	testSelector := self testSelectorOf: testItem.
	
	(self targetTestCasesFor: testItem) do: [ :each | 
		self runTest: testSelector of: each ]