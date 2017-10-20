tests
testFromMethodScope

	self 
		queryInScope: ClyMethodScope
		of: { self class >> #reader1OfVar1. self class >> #writerOfVar1 }.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first == (self class >> #reader1OfVar1)