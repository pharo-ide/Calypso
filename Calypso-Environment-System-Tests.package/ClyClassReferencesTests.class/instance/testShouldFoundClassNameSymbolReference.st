tests
testShouldFoundClassNameSymbolReference

	query variableQuery: (ClyConstantQuery returning: { Number }).
	self 
		queryInScope: ClyMethodScope
		of: { self class >> #referenceOfNumberClassByNameSymbol}.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first == (self class >> #referenceOfNumberClassByNameSymbol)