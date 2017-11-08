tests
testConvertingWithoutAbsentBasisObject
	| convertedScope |
	scope := self createSampleScope.
	
	convertedScope := scope withoutBasisObject: #notExistedBasis.
	
	self assert: convertedScope class equals: scope class.
	self deny: (convertedScope basisObjects includes: scope basisObjects anyOne).