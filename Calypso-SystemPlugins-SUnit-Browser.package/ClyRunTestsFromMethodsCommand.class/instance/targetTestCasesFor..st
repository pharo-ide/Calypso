execution
targetTestCasesFor: testItem
	| fullResult itemTestCases |
	itemTestCases := IdentitySet new.
	fullResult := self testResultOf: testItem.
	
	runTestCases do: [:each |
		fullResult concreteResultOf: each ifPresent: [ :concreteResult | 
			itemTestCases add: each ]].
	
	^itemTestCases ifEmpty: [fullResult testCases ]