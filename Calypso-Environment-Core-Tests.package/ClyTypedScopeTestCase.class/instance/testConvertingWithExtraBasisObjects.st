tests
testConvertingWithExtraBasisObjects
	| convertedScope |
	scope := self singleScopeSample.
	
	convertedScope := scope withExtraBasisObjects: {self singleBasisSample. self extraBasisSample}.
	
	self assert: convertedScope class equals: scope class.
	self assert: (convertedScope basisObjects asIdentitySet includesAll: scope basisObjects).
	self assert: (convertedScope basisObjects asIdentitySet includes: self extraBasisSample).
	self assert: convertedScope basisSize equals: scope basisSize + 1 "should skip existing basis"