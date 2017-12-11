tests
testCreationOnBasisObjects

	| expectedBasis |
	scope := self createSampleScope.
	expectedBasis := scope prepareBasisFrom: scope basisObjects.
	self assert: scope basisObjects = expectedBasis