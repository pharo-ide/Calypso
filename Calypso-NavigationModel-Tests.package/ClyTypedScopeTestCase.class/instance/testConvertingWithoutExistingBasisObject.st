tests
testConvertingWithoutExistingBasisObject
	| convertedScope |
	scope := self multipleScopeSample.
	
	convertedScope := scope withoutBasisObject: self extraBasisSample.
	
	self assert: convertedScope class equals: scope class.
	self deny: (convertedScope basisObjects includes: self extraBasisSample).
	self assert: (convertedScope basisObjects includes: self singleBasisSample).