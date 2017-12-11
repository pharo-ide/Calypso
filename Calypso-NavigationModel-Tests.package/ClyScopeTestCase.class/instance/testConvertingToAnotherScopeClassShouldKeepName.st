tests
testConvertingToAnotherScopeClassShouldKeepName
	| convertedScope |
	scope := self createSampleScope.
	scope name: 'test scope'.
	
	convertedScope := scope asScope: ClyScopeExample.
	
	self assert: convertedScope name equals: 'test scope'.
	