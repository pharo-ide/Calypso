tests
testConvertingWithoutExistingBasisObjects
	| convertedScope |
	scope := self createSampleScope.
	
	convertedScope := scope withoutBasisObjects: scope basisObjects.
	
	self assert: convertedScope class equals: scope class.
	self deny: (convertedScope basisObjects includesAll: scope basisObjects anyOne).