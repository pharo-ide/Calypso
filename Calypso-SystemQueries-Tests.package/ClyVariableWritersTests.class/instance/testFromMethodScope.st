tests
testFromMethodScope

	self 
		queryFromScope: ClyMethodScope
		ofAll: { self class >> #writer1OfVar1. self class >> #readerOfVar1 }.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first == (self class >> #writer1OfVar1)