tests
testBasedOnBasisObject

	scope := self createSampleScope.

	self assert: (scope isBasedOn: scope basisObjects anyOne).
	self deny: (scope isBasedOn: #anotherObject)