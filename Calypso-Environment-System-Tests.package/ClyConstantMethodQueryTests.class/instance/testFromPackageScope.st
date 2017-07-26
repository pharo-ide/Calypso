tests
testFromPackageScope
	| allMethods |
	allMethods := self executeQueryInScope: ClyPackageScope of: { self class package}.
	
	self assert: allMethods size equals: 2.
	allMethods := allMethods asIdentitySet.
	
	self assert: (allMethods includes: self class >> #method1).
	self assert: (allMethods includes: self class >> #method2)