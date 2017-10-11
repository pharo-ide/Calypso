tests
testFromSystemScope
	| allMethods |
	allMethods := self executeQueryInScope: ClySystemEnvironmentScope of: { ClySystemEnvironment currentImage}.
	
	self assert: allMethods size equals: 2.
	allMethods := allMethods asIdentitySet.
	
	self assert: (allMethods includes: self class >> #method1).
	self assert: (allMethods includes: self class >> #method2)