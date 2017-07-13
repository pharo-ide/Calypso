tests
testFromMethodScope

	| allMethods |
	allMethods := self 
		executeQueryInScope: ClyMethodScope
		of: { self class >> #reader1OfVar1. self class >> #writerOfVar1 }.
	
	self assert: allMethods size equals: 1.
	self assert: allMethods first == (self class >> #reader1OfVar1)