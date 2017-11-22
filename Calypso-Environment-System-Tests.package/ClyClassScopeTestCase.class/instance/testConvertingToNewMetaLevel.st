tests
testConvertingToNewMetaLevel
	| convertedScope |
	scope := self createSampleScope.
	
	convertedScope := scope withMetaLevel: ClyInstanceSideScope.
	
	self assert: convertedScope class equals: ClyInstanceSideScope.
	self assert: convertedScope basisObjects equals: (scope basisObjects collect: #instanceSide).