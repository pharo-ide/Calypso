tests
testConvertingToScopeInlcudedInheritedScope
	| convertedScope inheritedScope |
	scope := self createSampleScope.
	inheritedScope := scope asInheritedScope.
	
	convertedScope := scope withInheritedScope.
	
	self assert: convertedScope class equals: ClyCompositeScope.
	self assert: convertedScope name equals: ClyClassScope hierarchyScopeName.
	self assert: (convertedScope subscopes includes: scope).
	self assert: (convertedScope subscopes includes: inheritedScope)