*Calypso-SystemQueries-Tests
testConvertingToInterestingClassScope
	| convertedScope |
	scope := ClyCompositeScope on: { 
		ClySuperclassScope of: { String } in: environment localScope: ClyInstanceSideScope.
		ClySubclassScope of: { Array } in: environment localScope: ClyClassSideScope }.
	
	convertedScope := scope asInterestingClassScope.
	
	self assert: convertedScope class equals: ClyCompositeScope.
	self 
		assert: convertedScope subscopes asSet 
		equals: {
			ClyInterestingSuperclassScope of: {String} localScope: ClyInstanceSideScope.
			ClySubclassScope of: { Array } localScope: ClyClassSideScope} asSet.
	self assert: convertedScope environment equals: environment.