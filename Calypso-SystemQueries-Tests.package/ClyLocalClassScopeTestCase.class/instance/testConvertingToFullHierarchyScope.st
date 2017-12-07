tests
testConvertingToFullHierarchyScope
	| convertedScope inheritedScope |
	scope := self createSampleScope.
	inheritedScope := scope asInheritedScope.
	
	convertedScope := scope asFullHierarchyScope.
	
	self assert: convertedScope class equals: ClyCompositeScope.
	self assert: (convertedScope subscopes includes: scope).
	self assert: (convertedScope subscopes includes: inheritedScope).
	self assert: (convertedScope subscopes includes: (
		ClySubclassScope ofAll: scope basisObjects localScope: scope class))