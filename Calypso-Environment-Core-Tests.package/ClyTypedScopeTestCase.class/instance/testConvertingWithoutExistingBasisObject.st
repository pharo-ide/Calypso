tests
testConvertingWithoutExistingBasisObject
	| convertedScope |
	scope := self createSampleScope.
	
	convertedScope := scope withoutBasisObject: scope basisObjects anyOne.
	
	self assert: convertedScope class equals: scope class.
	self deny: (convertedScope basisObjects includes: scope basisObjects anyOne).