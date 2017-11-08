tests
testConvertingWithExtraBasisObject
	| convertedScope |
	scope := self createSampleScope.
	
	convertedScope := scope withExtraBasisObject: #extraObject.
	
	self assert: convertedScope class equals: scope class.
	self assert: (convertedScope basisObjects includesAll: scope basisObjects).
	self assert: (convertedScope basisObjects includes: #extraObject).
	self assert: convertedScope basisSize equals: scope basisSize + 1