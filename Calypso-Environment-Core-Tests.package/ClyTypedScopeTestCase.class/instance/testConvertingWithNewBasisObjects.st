tests
testConvertingWithNewBasisObjects
	| convertedScope |
	scope := self singleScopeSample.
	
	convertedScope := scope withNewBasisObjects: {self extraBasisSample}.
	
	self assert: convertedScope class equals: scope class.
	self 
		assert: convertedScope basisObjects asSet 
		equals: {self extraBasisSample} asSet.
	self assert: convertedScope basisSize equals: 1.