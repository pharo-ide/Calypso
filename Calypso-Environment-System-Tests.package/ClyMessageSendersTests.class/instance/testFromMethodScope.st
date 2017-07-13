tests
testFromMethodScope

	| allMethods |
	allMethods := self 
		executeQueryInScope: ClyMethodScope
		of: { self class >> #sender1OfMessage1. self class >> #senderOfMessage2 }.
	
	self assert: allMethods size equals: 1.
	self assert: allMethods first == (self class >> #sender1OfMessage1)