tests
testConvertingToInheritedScopeWhenThereAreNoInstanceSideBasis
	| convertedScope |
	scope := ClyClassScope of: { Object class. Array class } in: environment.
	
	convertedScope := scope asInheritedScope.
	
	self assert: convertedScope class equals: ClySuperclassScope.
	self assert: convertedScope metaLevelScope equals: ClyClassSideScope