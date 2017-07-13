tests
testFromClassScope

	| allMethods selectors |
	allMethods := self executeQueryInScope: ClyLocalClassScope of: { self class }.
	
	self assert: allMethods size equals: 2.
	selectors := allMethods collect: #selector as: Array.
	
	self assert: selectors equals: #(writer1OfVar1 writer2OfVar1)