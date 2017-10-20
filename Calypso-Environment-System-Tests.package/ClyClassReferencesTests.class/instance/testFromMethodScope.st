tests
testFromMethodScope

	self 
		queryInScope: ClyMethodScope
		of: { self class >> #reference1OfClass. self class >> #referenceOfAnotherClass }.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first == (self class >> #reference1OfClass)