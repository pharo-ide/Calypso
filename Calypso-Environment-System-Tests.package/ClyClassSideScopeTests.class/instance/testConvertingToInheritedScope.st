tests
testConvertingToInheritedScope
	| convertedScope |
	scope := self createSampleScope.
	
	convertedScope := scope asInheritedScope.
	
	self assert: convertedScope class equals: ClySuperclassScope.
	self assert: convertedScope metaLevelScope equals: ClyClassSideScope.
	self assert: convertedScope basisObjects equals: scope basisObjects