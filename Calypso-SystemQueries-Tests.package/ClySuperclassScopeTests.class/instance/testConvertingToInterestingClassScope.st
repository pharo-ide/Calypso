tests
testConvertingToInterestingClassScope
	| convertedScope |
	scope := self createSampleScope.
	scope localClassScope: ClyInstanceSideScope.
	
	convertedScope := scope asInterestingClassScope.
	
	self assert: convertedScope class equals: ClyInterestingSuperclassScope.
	self assert: convertedScope basisObjects equals: scope basisObjects.
	self assert: convertedScope localClassScope equals: scope localClassScope.
	self assert: convertedScope environment equals: scope environment