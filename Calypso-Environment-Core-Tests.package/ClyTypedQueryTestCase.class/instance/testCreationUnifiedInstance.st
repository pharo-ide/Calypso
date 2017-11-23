tests
testCreationUnifiedInstance

	| unifiedInstance |
	unifiedInstance := query asUnifiedInstance.
	
	self assert: unifiedInstance class equals: query class.
	self assert: unifiedInstance requiredResult equals: query requiredResult.
	self assert: unifiedInstance scope class equals: ClyUnknownScope 