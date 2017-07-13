tests
testFromMethodScope

	| allMethods |
	allMethods := self 
		executeQueryInScope: ClyMethodScope
		of: { self class >> #writer1OfVar1. self class >> #readerOfVar1 }.
	
	self assert: allMethods size equals: 1.
	self assert: allMethods first == (self class >> #writer1OfVar1)