tests
testConvertingToAnotherScopeClass
	| convertedScope |
	scope := self createSampleScope.
	
	convertedScope := scope asScope: ClyScopeExample.
	
	self assert: convertedScope == scope