tests
testConvertingWithNewBasisShouldKeepMetaLevelScope
	| convertedScope |
	scope := self singleScopeSample.
	scope metaLevelScope: ClyInstanceSideScope.
	
	convertedScope := scope withNewBasisObjects: {self extraBasisSample}.
	
	self assert: convertedScope metaLevelScope equals: ClyInstanceSideScope 