tests
testConvertingToScopeIncludedInheritingScope
	| convertedScope inheritingScope |
	scope := self createSampleScope.
	inheritingScope := scope asInheritingScope.
	
	convertedScope := scope withInheritingScope.
	
	self assert: convertedScope class equals: ClyCompositeScope.
	self assert: convertedScope name equals: ClyClassScope userHierarchyScopeName.
	self assert: (convertedScope subscopes includes: scope).
	self assert: (convertedScope subscopes includes: inheritingScope)