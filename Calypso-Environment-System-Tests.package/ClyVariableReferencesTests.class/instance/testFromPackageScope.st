tests
testFromPackageScope

	| allMethods selectors |
	allMethods := self executeQueryInScope: ClyPackageScope of: { self class package }.
	
	self assert: allMethods size equals: 3.
	selectors := allMethods collect: #selector as: Array.
	
	self assert: selectors equals: #(reference1OfVar1 reference2OfVar1 #supeclassReferenceOfVar1)