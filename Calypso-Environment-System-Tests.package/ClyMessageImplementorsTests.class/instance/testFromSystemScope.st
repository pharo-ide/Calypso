tests
testFromSystemScope
	| allMethods |
	allMethods := self executeQueryInScope: ClySystemScope of: { ClySystemEnvironment currentImage}.
	
	self assert: allMethods size equals: 3.
	allMethods := allMethods asIdentitySet.
	
	self assert: (allMethods includes: self class >> self targetSelector).
	self assert: (allMethods includes: self class classSide >> self targetSelector).
	self assert: (allMethods includes: self class superclass >> self targetSelector).