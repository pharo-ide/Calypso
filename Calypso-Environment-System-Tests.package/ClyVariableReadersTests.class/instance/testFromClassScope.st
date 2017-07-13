tests
testFromClassScope

	| allMethods selectors |
	allMethods := self executeQueryInScope: ClyLocalClassScope of: { self class }.
	
	self assert: allMethods size equals: 2.
	selectors := allMethods collect: #selector as: Array.
	
	self assert: selectors equals: #(reader1OfVar1 reader2OfVar1)