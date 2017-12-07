tests
testFromMethodScope

	self 
		queryFromScope: ClyMethodScope
		ofAll: { self class >> #reference1OfVar1. self class >> #referenceOfAnotherVar }.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first == (self class >> #reference1OfVar1)