tests
testConvertingWithNewBasisShouldKeepMetaLevelScope
	| convertedScope |
	scope := self singleScopeSample.
	scope localClassScope: ClyInstanceSideScope.
	
	convertedScope := scope withNewBasisObjects: {self extraBasisSample}.
	
	self assert: convertedScope localClassScope equals: ClyInstanceSideScope 