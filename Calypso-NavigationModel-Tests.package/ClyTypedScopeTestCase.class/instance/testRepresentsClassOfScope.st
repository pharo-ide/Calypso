tests
testRepresentsClassOfScope

	scope := self createSampleScope.
	self assert: (scope representsScope: self scopeClass).
	self assert: (scope representsScope: ClyTypedScope).
	
	self deny: (scope representsScope: ClyCompositeScope). "Class of scope which are not the class of subscopes"