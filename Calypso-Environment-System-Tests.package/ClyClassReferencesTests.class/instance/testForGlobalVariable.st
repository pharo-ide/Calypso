tests
testForGlobalVariable

	| allMethods |
	query variables: { self class environment bindingOf: #Smalltalk }.
	allMethods := self 
		executeQueryInScope: ClyMethodScope
		of: { self class >> #referenceOfSmalltalk}.
	
	self assert: allMethods size equals: 1.
	self assert: allMethods first == (self class >> #referenceOfSmalltalk)