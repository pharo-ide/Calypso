tests
testConvertingWithExtraBasisObjects
	| convertedScope |
	scope := self createSampleScope.
	
	convertedScope := scope withExtraBasisObjects: #(extra1 extra2).
	
	self assert: convertedScope class equals: scope class.
	self assert: (convertedScope basisObjects includesAll: scope basisObjects).
	self assert: (convertedScope basisObjects includesAll: #(extra1 extra2)).
	self assert: convertedScope basisSize equals: scope basisSize + 2