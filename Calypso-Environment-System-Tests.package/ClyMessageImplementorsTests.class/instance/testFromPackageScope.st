tests
testFromPackageScope
	| allMethods |
	allMethods := self executeQueryInScope: ClyPackageScope of: { self class package}.
	
	self assert: allMethods size equals: 3.
	allMethods := allMethods asIdentitySet.
	
	self assert: (allMethods includes: self class >> self targetSelector).
	self assert: (allMethods includes: self class classSide >> self targetSelector).
	self assert: (allMethods includes: self class superclass >> self targetSelector).