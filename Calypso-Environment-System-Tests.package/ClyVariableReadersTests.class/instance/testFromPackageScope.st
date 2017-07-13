tests
testFromPackageScope

	| allMethods selectors |
	allMethods := self executeQueryInScope: ClyPackageScope of: { self class package }.
	
	self assert: allMethods size equals: 3.
	selectors := allMethods collect: #selector as: Array.
	
	self assert: selectors equals: #(reader1OfVar1 reader2OfVar1 supeclassReaderOfVar1)