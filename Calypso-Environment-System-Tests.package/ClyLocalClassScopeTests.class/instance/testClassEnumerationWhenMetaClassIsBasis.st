tests
testClassEnumerationWhenMetaClassIsBasis

	scope := ClyLocalClassScope of: { ClyClass1FromP1 class}.
	
	scope classesDo: [ :each | result add: each].
	
	self assert: result equals: {ClyClass1FromP1} asSet