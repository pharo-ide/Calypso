tests
testFromClassScope
	| allMethods |
	
	allMethods := self executeQueryInScope: ClyLocalClassScope of: { self class }.
	
	self assert: allMethods size equals: 2.
	allMethods := allMethods asIdentitySet.
	
	self assert: (allMethods includes: (self class >> self targetSelector)).
	self assert: (allMethods includes: (self class classSide >> self targetSelector)).