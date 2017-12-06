tests
testFromClassScope

	self queryInScope: ClyClassScope of: { self class. self class superclass }.
	
	self assert: resultItems size equals: 1.
	
	self assert: resultItems first equals: (ClyClassComment of: self class)