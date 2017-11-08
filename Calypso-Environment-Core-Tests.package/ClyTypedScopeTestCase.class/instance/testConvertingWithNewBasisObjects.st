tests
testConvertingWithNewBasisObjects
	| convertedScope |
	scope := self createSampleScope.
	
	convertedScope := scope withExtraBasisObjects: #(newBasis1 newBasis2).
	
	self assert: convertedScope class equals: scope class.
	self assert: convertedScope basisObjects equals: #(newBasis1 newBasis2).