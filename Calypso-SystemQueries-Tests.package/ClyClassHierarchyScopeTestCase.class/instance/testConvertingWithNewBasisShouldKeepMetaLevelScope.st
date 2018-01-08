tests
testConvertingWithNewBasisShouldKeepMetaLevelScope
	| convertedScope |
	scope := self singleScopeSample.
	scope localScopeClass: ClyInstanceSideScope.
	
	convertedScope := scope withNewBasisObjects: {self extraBasisSample}.
	
	self assert: convertedScope localScopeClass equals: ClyInstanceSideScope 