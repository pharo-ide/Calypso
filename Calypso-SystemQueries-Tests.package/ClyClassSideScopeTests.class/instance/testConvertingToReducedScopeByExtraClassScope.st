tests
testConvertingToReducedScopeByExtraClassScope
	| convertedScope extraClassScope increasedScope |
	scope := self multipleScopeSample.
	extraClassScope := ClySuperclassScope of: self class localScope: self scopeClass.
	
	increasedScope := scope increasedByClassesFrom: extraClassScope.
	convertedScope := increasedScope reducedByClassesFrom: extraClassScope.
	
	self assert: convertedScope class equals: scope class.
	self assert: convertedScope basisObjects equals: scope basisObjects