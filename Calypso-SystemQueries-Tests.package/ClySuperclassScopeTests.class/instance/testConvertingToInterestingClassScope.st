tests
testConvertingToInterestingClassScope
	| convertedScope |
	scope := self createSampleScope.
	scope localScopeClass: ClyInstanceSideScope.
	
	convertedScope := scope asInterestingClassScope.
	
	self assert: convertedScope class equals: ClyInterestingSuperclassScope.
	self assert: convertedScope basisObjects equals: scope basisObjects.
	self assert: convertedScope localScopeClass equals: scope localScopeClass.
	self assert: convertedScope environment equals: scope environment