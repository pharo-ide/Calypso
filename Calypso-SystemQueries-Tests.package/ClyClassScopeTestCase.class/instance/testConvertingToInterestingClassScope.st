tests
testConvertingToInterestingClassScope
	| convertedScope |
	scope := self createSampleScope.
	
	convertedScope := scope asInterestingClassScope.
	
	self assert: convertedScope equals: scope