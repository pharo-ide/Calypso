tests
testConvertingWithExtraBasisObjectWhenThereIsExtraScopeParameter
	| convertedScope |
	scope := self singleScopeSample.
	scope extraParameter: #testParameter.
		
	convertedScope := scope withExtraBasisObject: self extraBasisSample.
	
	self assert: convertedScope extraParameter equals: #testParameter