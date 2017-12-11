tests
testConvertingWithExtraBasisObjectIfItIsAlreadyBasis
	| convertedScope |
	scope := self createSampleScope.
	
	convertedScope := scope withExtraBasisObject: scope basisObjects anyOne.
	
	self assert: convertedScope basisObjects equals: scope basisObjects.