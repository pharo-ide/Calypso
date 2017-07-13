tests
testFromMethodScope

	| allMethods |
	allMethods := self 
		executeQueryInScope: ClyMethodScope
		of: { self class >> #reference1OfVar1. self class >> #referenceOfAnotherVar }.
	
	self assert: allMethods size equals: 1.
	self assert: allMethods first == (self class >> #reference1OfVar1)