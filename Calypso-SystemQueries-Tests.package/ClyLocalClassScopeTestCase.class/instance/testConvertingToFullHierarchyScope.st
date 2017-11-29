tests
testConvertingToFullHierarchyScope
	| convertedScope inheritedScope |
	scope := self createSampleScope.
	inheritedScope := scope asInheritedScope.
	
	convertedScope := scope asFullHierarchyScope.
	
	self assert: convertedScope class equals: ClyCompositeScope.
	self assert: (convertedScope subscopes includes: scope).
	self assert: (convertedScope subscopes includes: scope asInheritedScope).
	self assert: (convertedScope subscopes includes: (
		ClySubclassScope of: scope basisObjects localScope: scope class))