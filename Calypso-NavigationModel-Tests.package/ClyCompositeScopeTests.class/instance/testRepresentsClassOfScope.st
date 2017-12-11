tests
testRepresentsClassOfScope

	scope := self createSampleScope.
	self assert: (scope representsScope: ClyScopeExample).
	self assert: (scope representsScope: ClyTypedScope).
	
	self deny: (scope representsScope: String). "Class of scope which are not the class of subscopes"