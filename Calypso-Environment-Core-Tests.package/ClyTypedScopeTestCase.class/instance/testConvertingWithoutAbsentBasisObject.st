tests
testConvertingWithoutAbsentBasisObject
	| convertedScope |
	scope := self createSampleScope.
	
	convertedScope := scope withoutBasisObject: #notExistedBasis.
	
	self assert: convertedScope class equals: scope class.
	self assert: convertedScope basisObjects equals: scope basisObjects