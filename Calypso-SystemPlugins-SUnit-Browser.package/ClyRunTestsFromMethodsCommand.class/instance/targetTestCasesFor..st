execution
targetTestCasesFor: testItem
	| fullResult itemTestCases |
	itemTestCases := IdentitySet new.
	fullResult := testItem getProperty: ClyTestResultProperty.
	
	runTestCases do: [:each |
		fullResult concreteResultOf: each ifPresent: [ :concreteResult | 
			itemTestCases add: each ]].
	
	^itemTestCases ifEmpty: [fullResult testCases ]