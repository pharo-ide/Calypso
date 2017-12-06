tests
testConvertingToNewBasis
	scope := self createSampleScope.
	
	self assert: (scope withNewBasisObjects: #(newBasis)) == scope.
	self assert: scope basisObjects isEmpty