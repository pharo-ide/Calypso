tests
testConvertingToIncreasedScopeByExtraClassScope
	| convertedScope extraClassScope |
	scope := self singleScopeSample.
	
	extraClassScope := ClySuperclassScope of: self class in: environment.
	convertedScope := scope increasedByClassesFrom: extraClassScope.
	
	self assert: convertedScope class equals: scope class.
	self assert: convertedScope basisObjects equals: scope basisObjects, self class allSuperclasses.