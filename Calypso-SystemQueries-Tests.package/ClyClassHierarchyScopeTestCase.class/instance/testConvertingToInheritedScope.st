tests
testConvertingToInheritedScope
	| convertedScope |
	scope := self createSampleScope.
	scope localScopeClass: ClyInstanceSideScope.
	
	convertedScope := scope asInheritedScope.
	
	self assert: (convertedScope representsScope: ClySuperclassScope).
	self assert: convertedScope localScopeClass equals: ClyInstanceSideScope.
	self assert: convertedScope basisObjects equals: scope basisObjects.
	self assert: convertedScope environment equals: environment.
	self assert: convertedScope name equals: ClyClassScope inheritedScopeName