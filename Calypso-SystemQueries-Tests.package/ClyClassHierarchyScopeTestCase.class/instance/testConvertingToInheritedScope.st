tests
testConvertingToInheritedScope
	| convertedScope |
	scope := self createSampleScope.
	scope localClassScope: ClyInstanceSideScope.
	
	convertedScope := scope asInheritedScope.
	
	self assert: (convertedScope representsScope: ClySuperclassScope).
	self assert: convertedScope localClassScope equals: ClyInstanceSideScope.
	self assert: convertedScope basisObjects equals: scope basisObjects.
	self assert: convertedScope environment equals: environment.