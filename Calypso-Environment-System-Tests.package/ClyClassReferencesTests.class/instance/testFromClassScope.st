tests
testFromClassScope

	| allMethods selectors |
	allMethods := self executeQueryInScope: ClyLocalClassScope of: { self class }.
	
	self assert: allMethods size equals: 3.
	selectors := allMethods collect: #selector as: Array.
	
	self assert: selectors equals: #(classSideReference1OfClass reference1OfClass reference2OfClass)