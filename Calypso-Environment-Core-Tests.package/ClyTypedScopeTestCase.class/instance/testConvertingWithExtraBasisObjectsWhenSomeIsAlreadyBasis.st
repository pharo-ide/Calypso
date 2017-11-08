tests
testConvertingWithExtraBasisObjectsWhenSomeIsAlreadyBasis
	| convertedScope |
	scope := self createSampleScope.
	
	convertedScope := scope withExtraBasisObjects: {#extraBasis. scope basisObjects anyOne}.
	
	self assert: (convertedScope basisObjects includesAll: scope basisObjects).
	self assert: (convertedScope basisObjects includes: #extraBasis).
	self assert: convertedScope basisSize equals: scope basisSize + 1