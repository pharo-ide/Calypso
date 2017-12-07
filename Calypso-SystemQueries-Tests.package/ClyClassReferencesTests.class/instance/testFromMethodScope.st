tests
testFromMethodScope

	self 
		queryFromScope: ClyMethodScope
		ofAll: { self class >> #reference1OfClass. self class >> #referenceOfAnotherClass }.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first == (self class >> #reference1OfClass)