tests
testConvertingToInheritingScope
	| convertedScope |
	scope := self createSampleScope.
	scope localScopeClass: ClyInstanceSideScope.
	
	convertedScope := scope asInheritingScope.
	
	self assert: (convertedScope representsScope: ClySubclassScope).
	self assert: convertedScope localScopeClass equals: ClyInstanceSideScope.
	self assert: convertedScope basisObjects equals: scope basisObjects.
	self assert: convertedScope environment equals: environment.
	self assert: convertedScope name equals: ClyClassScope inheritingScopeName