tests
testFromMethodScope

	self 
		queryInScope: ClyMethodScope
		of: { self class >> #sender1OfMessage1. self class >> #senderOfMessage2 }.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first == (self class >> #sender1OfMessage1)