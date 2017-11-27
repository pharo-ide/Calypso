tests
testConvertingToInheritedScopeWhenThereIsInstanceSideBasis
	| convertedScope |
	scope := ClyClassScope of: { Object. Array class } in: environment.
	
	convertedScope := scope asInheritedScope.
	
	self assert: convertedScope class equals: ClySuperclassScope.
	self assert: convertedScope metaLevelScope equals: ClyInstanceSideScope