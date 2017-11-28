*Calypso-Environment-System-Tests
testConvertingToNewMetaLevel
	| convertedScope |
	scope := ClyCompositeScope on: { 
		ClyClassScope of: { Object } in: environment.
		ClySubclassScope of: { Array } in: environment }.
	
	convertedScope := scope withMetaLevel: ClyInstanceSideScope.
	
	self assert: convertedScope class equals: ClyCompositeScope.
	self assert: convertedScope subscopes first equals: (ClyInstanceSideScope of: {Object}).
	self assert: convertedScope subscopes last class equals: ClySubclassScope.
	self assert: convertedScope subscopes last localClassScope equals: ClyInstanceSideScope.
	self assert: convertedScope environment equals: environment..
	self assert: (convertedScope subscopes collect: #environment as: Set) equals: {environment} asSet