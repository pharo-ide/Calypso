*Calypso-SystemQueries-Tests
testConvertingToInheritingScope
	| convertedScope |
	scope := ClyCompositeScope on: {
		ClyInstanceSideScope of: Object in: environment.
		ClyClassSideScope of: Array in: environment}.
		
	convertedScope := scope asInheritingScope.
	
	self assert: convertedScope class equals: ClyCompositeScope.
	self assert: (convertedScope subscopes first representsScope: ClySubclassScope).
	self assert: (convertedScope subscopes last representsScope: ClySubclassScope).
	self
		assert: (convertedScope subscopes collect: #localScopeClass as: Set)
		equals: {ClyInstanceSideScope. ClyClassSideScope} asSet.
	self assert: convertedScope environment equals: environment.
	self assert: convertedScope name equals: ClyClassScope inheritingScopeName