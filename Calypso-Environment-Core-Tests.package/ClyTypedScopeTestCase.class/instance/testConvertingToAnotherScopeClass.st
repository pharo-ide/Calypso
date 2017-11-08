tests
testConvertingToAnotherScopeClass
	| convertedScope |
	scope := self createSampleScope.
	
	convertedScope := scope asScope: ClyScopeExample.
	
	self assert: convertedScope class equals: ClyScopeExample.
	self assert: convertedScope basisObjects asSet equals: scope basisObjects asSet.