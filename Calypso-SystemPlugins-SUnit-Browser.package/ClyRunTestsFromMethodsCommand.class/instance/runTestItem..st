execution
runTestItem: testItem

	| testSelector |
	testSelector := testItem name asSymbol.
	
	(self targetTestCasesFor: testItem) do: [ :each | 
		self runTest: testSelector of: each ]