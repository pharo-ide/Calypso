*Calypso-SystemQueries-Tests
testConvertingToInheritedScope
	| convertedScope |
	scope := ClyCompositeScope on: {
		ClyInstanceSideScope of: Object in: environment.
		ClyClassSideScope of: Array in: environment}.
		
	convertedScope := scope asInheritedScope.
	
	self assert: convertedScope class equals: ClyCompositeScope.
	self assert: (convertedScope subscopes first representsScope: ClySuperclassScope).
	self assert: (convertedScope subscopes last representsScope: ClySuperclassScope).
	self
		assert: (convertedScope subscopes collect: #localClassScope as: Set)
		equals: {ClyInstanceSideScope. ClyClassSideScope} asSet.
	self assert: convertedScope environment equals: environment