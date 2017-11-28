*Calypso-Environment-System-Tests
testConvertingToInheritedScope
	| convertedScope |
	scope := ClyCompositeScope on: { 
		ClyInstanceSideScope of: { Object } in: environment.
		ClyInstanceSideScope of: { Array } in: environment }.
	
	convertedScope := scope asInheritedScope.
	
	self assert: convertedScope class equals: ClyCompositeScope.
	self 
		assert: convertedScope subscopes first 
		equals: (ClySuperclassScope of: {Object} localScope: ClyInstanceSideScope).
	self 
		assert: convertedScope subscopes last
		equals: (ClySuperclassScope of: {Array} localScope: ClyInstanceSideScope).
	self assert: convertedScope environment equals: environment..