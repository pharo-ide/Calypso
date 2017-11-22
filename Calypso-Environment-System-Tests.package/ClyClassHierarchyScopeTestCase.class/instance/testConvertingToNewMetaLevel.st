tests
testConvertingToNewMetaLevel
	| convertedScope |
	scope := self createSampleScope.
	self deny: scope metaLevelScope = ClyInstanceSideScope.
	
	convertedScope := scope withMetaLevel: ClyInstanceSideScope.
	
	self assert: convertedScope class equals: scope class.
	self assert: convertedScope metaLevelScope equals: ClyInstanceSideScope.
	self assert: convertedScope basisObjects equals: scope basisObjects.
	self assert: convertedScope environment equals: environment