tests
testConvertingWithNewBasisObjectsWhenThereIsExtraScopeParameter
	| convertedScope |
	scope := self singleScopeSample.
	scope extraParameter: #testParameter.
	
	convertedScope := scope withNewBasisObjects: {self extraBasisSample}.
	
	self assert: convertedScope extraParameter equals: #testParameter