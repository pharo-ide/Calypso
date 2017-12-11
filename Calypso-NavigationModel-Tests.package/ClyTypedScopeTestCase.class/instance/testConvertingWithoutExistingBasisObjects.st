tests
testConvertingWithoutExistingBasisObjects
	| convertedScope |
	scope := self multipleScopeSample.
	
	convertedScope := scope withoutBasisObjects: scope basisObjects.
	
	self assert: convertedScope class equals: scope class.
	self deny: (convertedScope basisObjects includesAll: scope basisObjects).