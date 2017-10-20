tests
testForGlobalVariable

	query variables: { self class environment bindingOf: #Smalltalk }.
	self 
		queryInScope: ClyMethodScope
		of: { self class >> #referenceOfSmalltalk}.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first == (self class >> #referenceOfSmalltalk)