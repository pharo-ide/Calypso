tests
testConvertingWithExtraBasisObject
	| convertedScope |
	scope := self singleScopeSample.
	
	convertedScope := scope withExtraBasisObject: self extraBasisSample.
	
	self assert: convertedScope class equals: scope class.
	self assert: (convertedScope basisObjects includesAll: scope basisObjects).
	self assert: (convertedScope basisObjects includes: self extraBasisSample).
	self assert: convertedScope basisSize equals: scope basisSize + 1