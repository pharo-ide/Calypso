tests
testShouldFoundClassNameSymbolReference

	| allMethods |
	query variables: { Number binding }.
	allMethods := self 
		executeQueryInScope: ClyMethodScope
		of: { self class >> #referenceOfNumberClassByNameSymbol}.
	
	self assert: allMethods size equals: 1.
	self assert: allMethods first == (self class >> #referenceOfNumberClassByNameSymbol)