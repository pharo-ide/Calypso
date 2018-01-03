tests
testConvertingToSomeHierarchyScope
	| convertedScope |
	scope := self createSampleScope.
	
	convertedScope := scope asScope: ClySubclassScope.
	
	self assert: convertedScope class equals: ClySubclassScope.
	self assert: convertedScope localScopeClass equals: scope localScopeClass.
	self assert: convertedScope basisObjects equals: scope basisObjects.
	self assert: convertedScope environment equals: environment